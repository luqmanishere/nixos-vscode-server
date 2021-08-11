{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    nixosModules.vscode = import ./modules/vscode-server;
    nixosModule = self.nixosModules.vscode;
  };
}
