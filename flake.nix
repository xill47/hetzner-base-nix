 {
   inputs = {
     nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
   };
 
   outputs = { nixpkgs, ... }: {
     nixosConfigurations = {
       hetzner-x86_64 = nixpkgs.lib.nixosSystem {
         system = "aarch64-linux";
         modules = [
           ./configuration.nix
         ];
       };
     };
   };
 }
