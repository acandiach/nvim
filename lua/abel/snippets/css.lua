local ls = require("luasnip") --{{{
local s = ls.s --> snippet
local i = ls.i --> insert node
local t = ls.t --> text node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("css snippets", { clear = true })
local file_pattern = "*.css"

local bz = s(
	"bz",
	fmt(
		[[
html {{
  box-sizing: border-box;
  font-size: 62.5%;
}}
*, *:before, *:after {{
  box-sizing: inherit;
}}
body {{
  font-size: 1.6px;
}}
{}
]],
		{
			i(1, ""),
		}
	)
)
table.insert(snippets, bz)

local mq = s(
	"mq",
	fmt(
		[[
@media(min-width: {}) {{
  {}
}}
]],
		{
			i(1, "var1"),
			i(2, "var2"),
		}
	)
)
table.insert(snippets, mq)

return snippets, autosnippets
