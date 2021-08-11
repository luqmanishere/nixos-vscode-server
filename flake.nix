{
  description = "Fixes vscode-server on NixOS";

  outputs = { self, nixpkgs }: {

    # Export the module under the name vscode
    nixosModules.vscode = import ./modules/vscode-server;
    nixosModule = self.nixosModules.vscode;
  };
}
