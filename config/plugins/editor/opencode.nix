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

  # Recommended keymaps
  keymaps = [
    {
      mode = [ "n" "x" ];
      key = "<C-a>";
      action.__raw = ''function() require("opencode").ask("@this: ", { submit = true }) end'';
      options.desc = "Ask opencode";
    }
    {
      mode = [ "n" "x" ];
      key = "<C-x>";
      action.__raw = ''function() require("opencode").select() end'';
      options.desc = "Execute opencode action…";
    }
    {
      mode = [ "n" "x" ];
      key = "ga";
      action.__raw = ''function() require("opencode").prompt("@this") end'';
      options.desc = "Add to opencode";
    }
    {
      mode = [ "n" "t" ];
      key = "<C-.>";
      action.__raw = ''function() require("opencode").toggle() end'';
      options.desc = "Toggle opencode";
    }
    {
      mode = "n";
      key = "<S-C-u>";
      action.__raw = ''function() require("opencode").command("session.half.page.up") end'';
      options.desc = "opencode half page up";
    }
    {
      mode = "n";
      key = "<S-C-d>";
      action.__raw = ''function() require("opencode").command("session.half.page.down") end'';
      options.desc = "opencode half page down";
    }
    # Remap increment/decrement since we use C-a and C-x
    {
      mode = "n";
      key = "+";
      action = "<C-a>";
      options = {
        desc = "Increment";
        noremap = true;
      };
    }
    {
      mode = "n";
      key = "-";
      action = "<C-x>";
      options = {
        desc = "Decrement";
        noremap = true;
      };
    }
  ];
}
