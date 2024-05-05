require('packer').startup(function()
    use 'wbthomason/packer.nvim'  -- Packer puede gestionarse a sí mismo
  
    -- Autocompletado
    use 'hrsh7th/nvim-cmp'  -- El motor de autocompletado
    use 'hrsh7th/cmp-buffer'  -- Completado del buffer
    use 'hrsh7th/cmp-path'  -- Completado de rutas de archivo
    use 'hrsh7th/cmp-cmdline'  -- Completado en la línea de comandos
    use 'hrsh7th/cmp-nvim-lsp'  -- Completado LSP
    use 'hrsh7th/cmp-nvim-lua'  -- Completado para configuraciones de nvim en Lua
  
    -- Snippets
    use 'L3MON4D3/LuaSnip'  -- Motor de snippets
    use 'saadparwaiz1/cmp_luasnip'  -- Puente para cmp
  
    -- LSP
    use 'neovim/nvim-lspconfig'  -- Configuraciones comunes de LSP
    use 'williamboman/nvim-lsp-installer'  -- Instalador simple de servidores LSP
  end)
  
  -- LSP settings
  require('nvim-lsp-installer').setup {}  -- Asegúrate de que los LSPs se instalen automáticamente
  local lspconfig = require('lspconfig')
  
  -- Agregar servidores LSP
  lspconfig.pyright.setup {}  -- Configuración LSP para Python
  --lspconfig.sql.setup{}     -- example
  
  
  -- CMP
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)  -- Requiere LuaSnip como motor de snippets
      end,
    },
    mapping = {
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    }, {
      { name = 'buffer' },
    })
  })
  
-- Configuración para el autocompletado en la línea de comandos 
--  cmp.setup.cmdline('/', {
--    sources = {
--      { name = 'buffer' }
--    }
--  })
  
--  cmp.setup.cmdline(':', {
--    sources = cmp.config.sources({
--      { name = 'path' }
--    }, {
--      { name = 'cmdline' }
--    })
--  })