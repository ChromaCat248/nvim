local buf_eval = function(opt)
  local index = tonumber(opt.fargs[1])
  local buf_content = vim.api.nvim_buf_get_lines(index, 0, vim.api.nvim_buf_line_count(index), false)
  print(buf_content[0])
end

vim.api.nvim_create_user_command('BufEval', buf_eval, { nargs = 1 })
