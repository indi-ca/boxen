class people::indika::nix {

  #http://nixos.org/releases/nix/nix-1.9/nix-1.9.tar.xz

  vcsrepo { "/Users/indika/dev/tools/nixpkgs":
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/NixOS/nixpkgs.git',
    revision => 'master',
    owner    => 'indika',
    group    => 'staff',
    depth    => 1,
  }



}
