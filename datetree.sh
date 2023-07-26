function datetree() {
  if [[ -n "$1" ]] then cd "$1":; else cd ./.; fi
  for x in *; do if [ -f "$x" ]; then d=$(date -r "$x" +"%Y-%m-%d") && mkdir -p "$d" && mv -- "$x" "$d/"; fi; done
}
