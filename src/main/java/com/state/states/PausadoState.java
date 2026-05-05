package com.state.states;

import com.state.player.ReproductorMusica;

public class PausadoState implements Estado {
   private final ReproductorMusica player;

   public PausadoState(ReproductorMusica player) {
      this.player = player;
   }

   @Override
   public String play() {
      player.changeEstado(new ReproduciendoState(player));
      return "▶️  Reanudando desde pausa…";
   }

   @Override
   public String pause() {
      return "⚠️  Ya estaba en pausa.";
   }

   @Override
   public String stop() {
      player.changeEstado(new DetenidoState(player));
      return "⏹️  Deteniendo…";
   }

   @Override
   public String next() {
      return "⏭️  Siguiente pista (seguirá en pausa)...";
   }
}
