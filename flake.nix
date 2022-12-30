{
  description = "Floxpkgs/Project Template";
  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";
  inputs.flox-floxpkgs.url = "github:flox/floxpkgs";
  inputs.flox-floxpkgs-internal.url = "git+ssh://git@github.com/flox/floxpkgs-internal";

  # Declaration of external resources
  # =================================
  inputs.shellHooks = {
    url = "github:cachix/pre-commit-hooks.nix";
    inputs.nixpkgs.follows = "flox-floxpkgs/nixpkgs/nixpkgs";
  };
  # =================================

  outputs = args @ {flox-floxpkgs, ...}: flox-floxpkgs.project args (_: {});
}
