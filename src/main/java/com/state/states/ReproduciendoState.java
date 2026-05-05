package com.state.states;

import com.state.player.ReproductorMusica;

public class ReproduciendoState implements Estado {
   private final ReproductorMusica player;

   public ReproduciendoState(ReproductorMusica player) {
      this.player = player;
   }

   @Override
   public String play() {
      return "⚠️  Ya se está reproduciendo.";
   }

   @Override
   public String pause() {
      player.changeEstado(new PausadoState(player));
      return "⏸️  Pausando…";
   }

   @Override
   public String stop() {
      player.changeEstado(new DetenidoState(player));
      return "⏹️  Deteniendo…";
   }

   @Override
   public String next() {
      return "⏭️  Siguiente pista…";
   }
}
