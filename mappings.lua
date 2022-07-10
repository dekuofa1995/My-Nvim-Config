local M = {}

M.disable = {
    -- ["<leader>rl"] = { "<cmd> :luafile $MYVIMRC <CR>" , " Reload Nvim config" },
}

M.my_utils = {
  n = {
    ["<leader>rf"] = { "<cmd> RunFile <CR>", " Run current file"},
    -- Tab keymappinds
    ["<A-n>"] = { "<cmd> Tbufnext <CR>", "→ Next Tabbuffer"},
    ["<A-p>"] = { "<cmd> Tbufprev <CR>", "← Prev Tabbuffer"},
    ["<A-c>"] = { "<cmd> Tbufclose <CR>", " Close Tabbuffer"},
    ["<A-q>"] = { "<cmd> q <CR>", " Close buffer"},
    -- 
  },
}

return M
