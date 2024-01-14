M = {}
local function dump(o)
	if type(o) == 'table' then
		local s = '{\n'
		for k, v in pairs(o) do
			s = s .. "  " .. tostring(k) .. '=' .. tostring(v) .. '\n'
		end
		s = s .. '}'
		vim.api.nvim_echo({ { s } }, true, {})
	else
		vim.api.nvim_echo({ { tostring(o) } }, true, {})
	end
end
M.dump = dump
return M
