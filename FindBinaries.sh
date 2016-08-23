echo "Binaries in the current dir (and its children):"
echo "==============================================="
find -type f -executable -exec sh -c 'test "$(head -c 2 "$1")" != "#!"' sh {} \; -print
