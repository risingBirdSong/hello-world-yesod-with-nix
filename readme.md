## Get Started
1) $> `stack build`
2) $> `stack run`

## steps i used to make
1) make a `package.yaml` with the build information
2) $> `nix-shell --packages cabal2nix --run "cabal2nix ." > default.nix`
3) make a `release.nix` and fill it 
4) make an `app/main.hs` with a hello world
5) build with $> `nix-build release.nix`
6) run the exe $> ./result/bin/yesodnix 
7) results: "hello world from nix" 
8) then I incorporated a simple version of a yesod project from one of Goose's projects