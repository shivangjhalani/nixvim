{
  plugins.snacks = {
    enable = true;
    lazyLoad.enable = false;

    settings = {
      # Enable required modules for opencode
      input.enabled = true;
      picker.enabled = true;
      terminal.enabled = true;

      # Optional: enable other useful snacks modules
      bigfile.enabled = true;
      notifier.enabled = true;
      quickfile.enabled = true;
      statuscolumn.enabled = true;
      words.enabled = true;
    };
  };
}
