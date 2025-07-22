return {
  'mfussenegger/nvim-jdtls',
  ft = { "java" },
  config = function()
    require('pox.config.jdtls')
  end
}
