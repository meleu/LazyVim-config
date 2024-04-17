return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "zidhuss/neotest-minitest",
    "haydenmeade/neotest-jest",
    "marilari88/neotest-vitest",
    "olimorris/neotest-rspec",
    "rcasia/neotest-bash",
  },
  opts = function(_, opts)
    -- jest config
    table.insert(
      opts.adapters,
      require("neotest-jest")({
        jestCommand = "npm test --",
        jestConfigFile = "custom.jest.config.ts",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      })
    )

    -- vitest config
    table.insert(opts.adapters, require("neotest-vitest"))

    -- minitest config
    table.insert(opts.adapters, require("neotest-minitest"))

    -- rspec config
    table.insert(opts.adapters, require("neotest-rspec"))

    -- bashunit config
    table.insert(opts.adapters, require("neotest-bash"))
  end,
}
