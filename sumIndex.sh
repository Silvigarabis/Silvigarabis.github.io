sumIndex(){
  if [[ -f index.html || -f index.htm ]]; then
    return
  fi
  {
    cdir=$()
    cat <<EOM
# Index of /$(git rev-parse --show-prefix)

EOM
    if [ -n "$(git rev-parse --show-prefix)" ]; then
      echo "[../](./../)  "
    fi
    for d in *; do
      if [ -d "$d" ]; then
        (
          cd "$d"
          eval "$FUNCNAME"
        )
        echo "[$d/](./$d/)  "
      fi
    done
    for f in *; do
      if [ -f "$f" ]; then
        echo "[$f](./$f/)  "
      fi
    done
  } > index.md
}
cd "$(git rev-parse --show-toplevel)"
sumIndex
