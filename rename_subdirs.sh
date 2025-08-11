#!/usr/bin/env bash
set -euo pipefail

mvdir () {
  # mvdir origem destino
  if [ -d "$1" ]; then
    echo "Renaming: $1  ->  $2"
    git mv "$1" "$2"
  else
    echo "Skip (not found): $1"
  fi
}

# Gestures
mvdir "_gestures/escuta" "_gestures/listening"
mvdir "_gestures/presença" "_gestures/presence"
mvdir "_gestures/tensão" "_gestures/tension"

# Interfaces
mvdir "_interfaces/modos_teste" "_interfaces/test_modes"

# Layers
mvdir "_layers/camadas_ativas" "_layers/active_layers"
mvdir "_layers/camadas_latentes" "_layers/latent_layers"

# Maps
mvdir "_maps/desenhos_simbolicos" "_maps/symbolic_drawings"
mvdir "_maps/grafos_base" "_maps/base_graphs"
mvdir "_maps/redes_dinamicas" "_maps/dynamic_networks"

# Roots
mvdir "_roots/fractais_visuais" "_roots/visual_fractals"
mvdir "_roots/referencias" "_roots/references"

# Voice
mvdir "_voice/cartas_abertas" "_voice/open_letters"
mvdir "_voice/diário_de_bordo" "_voice/logbook"

echo
echo "Done. Now review with: git status"
