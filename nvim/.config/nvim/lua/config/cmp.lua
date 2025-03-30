local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()

local kind_icons = {
  Text = "",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰇽",
  Variable = "󰂡",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰅲",
}

local nerd_icons = {
  Text = "",
  Method = "λ",
  Function = "ƒ",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "塞",
  Value = "󱉏",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "󰪨",
  Folder = "",
  EnumMember = "",
  Constant = "󰌾",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end

vim.api.nvim_set_hl(0, "CmpSel", { bg = "#7287fd", fg = "#ffffff", bold = true })
vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

cmp.setup({

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = "menu,menuone,noinsert" .. (true and "" or ",noselect"),
  },

  window = {
    completion = {
      max_view_entries = 10,
      side_padding = 1,
      col_offset = 1,
      max_height = 10,
      max_width = 2,
      scrolloff = 3,
      border = border("CmpBorder"),
      -- winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
      scrollbar = false,
    },
    documentation = {
      border = border("CmpDocBorder"),
      winhighlight = "Normal:CmpDoc",
      max_width = 30,
      max_height = 20,
    },
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text", -- show only symbol annotations
      -- preset = "codicons",

      maxwidth = {
        menu = 50,           -- leading text (labelDetails)
        abbr = 50,           -- actual suggestion item
      },
      ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
      show_labelDetails = true, -- show labelDetails in menu. Disabled by default

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      format = function(entry, vim_item)
        -- Kind icons

        vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatenates the icons with the name of the item kind

        -- Source
        vim_item.menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          latex_symbols = "[LaTeX]",
        })[entry.source.name]
        return vim_item
      end,
    }),
    -- fields = { "abbr", "kind", "menu" },
    -- format = function(entry, item)
    --   local icon = kind_icons[item.kind] or " "
    --   local kind = item.kind
    --   item.kind = string.format("%s %s", icon, kind)
    --   -- item.kind = string.format("%s", nerd_icons[item.kind])
    --   item.menu = ({
    --     path = "[Path]",
    --     luasnip = "[Snippet]",
    --     buffer = "[Buffer]",
    --     nvim_lsp = "[LSP]",
    --     nvim_lua = "[Lua]",
    --   })[entry.source.name] or ""
    --
    --   local widths = {
    --     abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
    --     menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30,
    --   }
    --
    --   for key, width in pairs(widths) do
    --     if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
    --       item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
    --     end
    --   end
    --
    --   -- if #item.abbr > 25 then
    --   --   item.abbr = string.sub(item.abbr, 1, 37) .. "..."
    --   -- end
    --
    --   -- -- Add snippet preview (replace the preview mechanism)
    --   -- if entry.source.name == "luasnip" then
    --   -- 	local doc = entry:get_documentation()
    --   -- 	if doc then
    --   -- 		item.documentation = {
    --   -- 			kind = "markdown",
    --   -- 			value = table.concat(doc, "\n"),
    --   -- 		}
    --   -- 	end
    --   -- end
    --   return item
    -- end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-y>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<Tab>"] = cmp.mapping.confirm({ cmp.ConfirmBehavior.Insert, select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp", priority = 1000 },
    { name = "nvim_lua", priority = 750 },
    { name = "luasnip",  priority = 500 },
    { name = "buffer",   priority = 250 },
    { name = "path",     priority = 100 },
  }),
})
