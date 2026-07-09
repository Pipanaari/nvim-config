return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>go", function()
      local url = vim.api.nvim_exec2("Git remote get-url origin", { output = true })
      if url.output ~= nil and url.output:sub(1, 8) == "https://" then
        vim.cmd("silent !start " .. url.output)
      else
        print("No remote origin found")
      end
    end, { desc = "Git open remote url" })

    vim.keymap.set("n", "<leader>gO", function()
      local url = vim.api.nvim_exec2("Git remote get-url origin", { output = true })
      local branch = vim.api.nvim_exec2("Git rev-parse --abbrev-ref HEAD", { output = true })
      if branch.output == nil then
        return print("No branch detected")
      elseif url.output ~= nil and url.output:sub(1, 8) == "https://" then
        local fixedUrl = url.output
        if fixedUrl:sub(-4, -1) == ".git" then
          fixedUrl = fixedUrl:sub(1, -5)
        end
        local path = vim.fn.expand('%')
        vim.cmd("silent !start " .. fixedUrl .. "/blob/" .. branch.output .. "/" .. path)
      else
        print("No remote origin found")
      end
    end, { desc = "Git open pull request" })
  end
}
