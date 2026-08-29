#!/bin/sh
set -e
cli=/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli
bg="#95A5AD"
render() {
  tmp="$3.tmp.png"
  "$cli" pcb render --side "$1" --rotate 0,0,90 --zoom 0.9 --pan "$2" -o "$tmp" PCB/rd/rd.kicad_pcb
  magick "$tmp" -background "$bg" -flatten -alpha off "$3"
  rm "$tmp"
}
render top 3.0,0,0 docs/render-front.png
render bottom -3.0,0,0 docs/render-back.png
