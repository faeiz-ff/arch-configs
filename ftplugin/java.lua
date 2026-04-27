local jdtls = require("jdtls")

-- root detection
local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = require("jdtls.setup").find_root(root_markers)

if root_dir == nil then
  return
end

-- workspace
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

-- mason paths
local mason = vim.fn.stdpath("data") .. "/mason/packages"

local jdtls_path = mason .. "/jdtls"
local launcher = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")
local config_dir = jdtls_path .. "/config_windows"

-- completion capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- debug/test bundles
local bundles = {}

vim.list_extend(bundles, vim.split(vim.fn.glob(
  mason .. "/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar"
), "\n"))

vim.list_extend(bundles, vim.split(vim.fn.glob(
  mason .. "/java-test/extension/server/*.jar"
), "\n"))

local config = {
  capabilities = capabilities,
  root_dir = root_dir,

  cmd = {
    "java",

    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",

    "-Dlog.protocol=false",
    "-Dlog.level=ERROR",

    "-Xms1g",
    "-Xmx2g",

    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",

    "-jar", launcher,
    "-configuration", config_dir,
    "-data", workspace_dir,
  },

  settings = {
    java = {

      autobuild = {
        enabled = true
      },

      completion = {
        favoriteStaticMembers = {
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse",
          "org.mockito.Mockito.*"
        }
      },

      import = {
        gradle = { enabled = true },
        maven = { enabled = true }
      },

      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" }
    }
  },

  init_options = {
    bundles = bundles
  },

  on_attach = function(client, bufnr)

    local opts = { buffer = bufnr }

    vim.keymap.set("n", "<leader>tm", jdtls.test_nearest_method, opts)
    vim.keymap.set("n", "<leader>tc", jdtls.test_class, opts)

    vim.keymap.set("n", "<leader>oi", jdtls.organize_imports, opts)
    vim.keymap.set("n", "<leader>ev", jdtls.extract_variable, opts)
    vim.keymap.set("n", "<leader>em", jdtls.extract_method, opts)

  end,
}

jdtls.start_or_attach(config)
