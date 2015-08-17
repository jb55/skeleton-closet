{ stdenv }:

stdenv.mkDerivation rec {
  name = "{{ $basename }}-${version}";
  version = "0.1";

  src = ./.;

  makeFlags = "PREFIX=$(out)";

  buildInputs = [ ];

  meta = with stdenv.lib; {
    description = "{{ description }}";
    homepage = "https://github.com/jb55/{{ $basename }}";
    maintainers = with maintainers; [ jb55 ];
    license = licenses.mit;
  };
}
