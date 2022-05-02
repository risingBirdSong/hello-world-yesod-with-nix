{ mkDerivation, aeson, base, hpack, lib, monad-logger
, persistent-postgresql, resource-pool, text, yesod
}:
mkDerivation {
  pname = "yesodnix";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base monad-logger persistent-postgresql resource-pool text
    yesod
  ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    aeson base monad-logger persistent-postgresql resource-pool text
    yesod
  ];
  prePatch = "hpack";
  license = lib.licenses.bsd3;
}
