
function! myspacevim#after() abort
    lua << EOF
local golang_setup = {
  on_attach = function(client, bufnr)
    require "lsp_signature".on_attach({
      bind = true, 
      handler_opts = {
        border = "single"
      }
    }, bufnr)
  end,
}

require'lspconfig'.gopls.setup(golang_setup)
EOF
endfunction

