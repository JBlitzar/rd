#!/bin/sh
cli=/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli
"$cli" pcb render --side top --rotate 0,0,90 --zoom 0.7 -o docs/render-front.png PCB/rd/rd.kicad_pcb
"$cli" pcb render --side bottom --rotate 0,0,90 --zoom 0.7 -o docs/render-back.png PCB/rd/rd.kicad_pcb
