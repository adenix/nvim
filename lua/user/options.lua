local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- use the clipboard as the unnamed register
  confirm = true,                          -- ask what to do about unsaved/read-only files
  completeopt = { "menuone", "noselect" }, -- options for Insert mode completion
  conceallevel = 0,                        -- whether concealable text is shown or hidden
  cursorline = true,                       -- highlight the screen line of the cursor
  endofline = true,                        -- write <EOL> for last line in file
  expandtab = true,                        -- use spaces when <Tab> is inserted
  fileencoding = "utf-8",                  -- file encoding for multibyte text
  guifont = "monospace:h17",               -- GUI: Name(s) of font(s) to be used
  hlsearch = true,                         -- highlight matches with last search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- enable the use of mouse clicks
  number = true,                           -- print the line number in front of each line
  pumheight = 10,                          -- maximum height of the popup menu
  relativenumber = true,                   -- show relative line number in front of each line
  shiftwidth = 2,                          -- number of spaces to use for (auto)indent step
  scrolloff = 8,                           -- minimum nr. of lines above and below cursor
  showtabline = 2,                         -- tells when the tab pages line is displayed
  sidescrolloff = 8,                       -- min. nr. of columns to left and right of cursor
  signcolumn = "yes",                      -- when and how to display the sign column
  smartcase = true,                        -- no ignore case when pattern has uppercase
  smartindent = true,                      -- smart autoindenting for C programs
  splitbelow = true,                       -- new window from split is below the current one
  splitright = true,                       -- new window is put right of the current one
  swapfile = false,                        -- whether to use a swapfile for a buffer
  tabstop = 2,                             -- number of spaces that <Tab> in file uses
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  undofile = true,                         -- save undo information in a file
  updatetime = 300,                        -- after this many milliseconds flush swap file
  wrap = false,                            -- long lines wrap and continue on the next line
  writebackup = false,                     -- make a backup before overwriting a file
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
