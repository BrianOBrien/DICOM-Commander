#!/usr/bin/env bash
set -e

ACCENT="#8B5CF6"
BG="#1E1E1E"

SIZES=(32 64 96)

TOOLBAR_ICONS=(
  move_left
  move_right
  sync
  start
  pause
  stop
  pacs_echo
  pacs_query
)

TREE_ICONS=(
  patient
  study
  series
  instance
  frame
)

SRC=./src
OUT=./out

mkdir -p "$OUT/toolbar" "$OUT/tree"

render () {
  local name=$1
  local size=$2
  local out=$3

  rsvg-convert -w "$size" -h "$size" "./src/$name.svg" -o "$out"
}

for icon in "${TOOLBAR_ICONS[@]}"; do
  render "$icon" 32 "$OUT/toolbar/$icon.png"
  render "$icon" 64 "$OUT/toolbar/$icon@2x.png"
  render "$icon" 96 "$OUT/toolbar/$icon@3x.png"
done

for icon in "${TREE_ICONS[@]}"; do
  render "$icon" 32 "$OUT/tree/$icon.png"
done

echo "✔ Icons generated"
