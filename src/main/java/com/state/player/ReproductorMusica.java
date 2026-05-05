package com.state.player;

import com.state.states.DetenidoState;
import com.state.states.Estado;

public class ReproductorMusica {
   private Estado estado;

   public ReproductorMusica() {
      this.estado = new DetenidoState(this);
   }

   public void changeEstado(Estado estado) {
      this.estado = estado;
   }

   public String play() {
      return estado.play();
   }

   public String pause() {
      return estado.pause();
   }

   public String stop() {
      return estado.stop();
   }

   public String next() {
      return estado.next();
   }
}
