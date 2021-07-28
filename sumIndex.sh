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
        t="${f##*.}"
        if [[ "$t" = md || "$t" = html || "$t" = htm ]]; then
          fi="${f%.*}"
          if [ "$fi" != index ]; then
            echo "[${fi}](./${fi})  "
          fi
        else
          echo "[$f](./$f)  "
        fi
      fi
    done
    if [ -f index_attach.txt ]; then
      cat index_attach.txt
    fi
  } > index.md
}
cd "$(git rev-parse --show-toplevel)"
sumIndex
