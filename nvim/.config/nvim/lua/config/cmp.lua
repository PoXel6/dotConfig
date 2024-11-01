local cmp = require("cmp")
local luasnip = require("luasnip")

vim.api.nvim_set_hl(0, "CmpSel", { bg = "#7287fd", fg = "#ffffff", bold = true })

require("luasnip.loaders.from_vscode").lazy_load()

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

local options = {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = "menu,menuone,noselect",
  },

  window = {
    completion = {
      side_padding = 1,
      border = border("CmpBorder"),
      winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
      scrollbar = false,
      max_width = 20,
    },
    documentation = {
      border = border("CmpDocBorder"),
      winhighlight = "Normal:CmpDoc",
      max_width = 20,
    },
  },

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, item)
      item.kind = string.format("%s", nerd_icons[item.kind])
      item.menu = ({
        path = "[Path]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]",
      })[entry.source.name] or ""

      if #item.abbr > 25 then
        item.abbr = string.sub(item.abbr, 1, 37) .. "..."
      end

      -- Add snippet preview (replace the preview mechanism)
      if entry.source.name == "luasnip" then
        local doc = entry:get_documentation()
        if doc then
          item.documentation = {
            kind = "markdown",
            value = table.concat(doc, "\n"),
          }
        end
      end
      return item
    end,
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
    { name = "luasnip",  priority = 750 },
    { name = "buffer",   priority = 500 },
    { name = "nvim_lua", priority = 250 },
    { name = "path",     priority = 100 },
  }),
}

cmp.setup(options)
