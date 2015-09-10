with import <nixpkgs> {};
  
stdenv.mkDerivation rec {
  name = "{{ binary name ? $basename }}";
  buildInputs = [ makeWrapper ];

  buildPhase = "true";

  libPath = lib.makeLibraryPath [ libXrandr libXinerama libXcursor ];

  unpackPhase = "true";

  installPhase = ''
    mkdir -p $out/bin
    cp ${./{{ binary name ? $basename }}} $out/bin/{{ binary name ? $basename }}
    wrapProgram $out/bin/{{ binary name ? $basename }} \
      --prefix LD_LIBRARY_PATH : "${libPath}"
  '';
}
