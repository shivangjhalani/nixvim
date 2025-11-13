{ pkgs, ... }:
{
  plugins.opencode = {
    enable = true;

    settings = {
      # Enable auto-reload of buffers edited by opencode
      auto_reload = true;

      # Configure provider (snacks is default when available)
      provider = {
        enabled = "snacks";
      };

      # Optional: configure prompts library
      prompts = {
        # You can add custom prompts here
        # Example:
        # example = {
        #   description = "An example prompt";
        #   prompt = "Write a function that...";
        # };
      };
    };
  };

  # Required for auto_reload to work
  opts.autoread = true;
}
