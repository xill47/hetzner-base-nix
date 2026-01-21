 {
   inputs = {
     nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
   };
 
   outputs = { nixpkgs, ... }: {
     nixosConfigurations = {
       hetzner-base = nixpkgs.lib.nixosSystem {
         system = "aarch64-linux";
         modules = [
           ./configuration.nix
         ];
       };
     };
   };
 }
