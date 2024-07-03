return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
	      require('telescope')
	      
	      local builtin = require 'telescope.builtin'
	      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [f]iles}' })
	      vim.keymap.set('n', '<leader>fp', builtin.git_files, { desc = '[F]ind [p]roject files' })
	      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind with [g]rep' })
	      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [b]uffers' })
	      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind in [h]elp' })
      end
    }
