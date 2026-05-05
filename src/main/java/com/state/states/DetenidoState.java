package com.state.states;

import com.state.player.ReproductorMusica;

public class DetenidoState implements Estado {
   private final ReproductorMusica player;

   public DetenidoState(ReproductorMusica player) {
      this.player = player;
   }

   @Override
   public String play() {
      player.changeEstado(new ReproduciendoState(player));
      return "▶️  Iniciando reproducción…";
   }

   @Override
   public String pause() {
      return "⚠️  No se puede pausar: está detenido.";
   }

   @Override
   public String stop() {
      return "⚠️  Ya estaba detenido.";
   }

   @Override
   public String next() {
      player.changeEstado(new ReproduciendoState(player));
      return "⏭️  Saltar pista y reproducir.";
   }
}
