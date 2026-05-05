package com.state;

import com.state.player.ReproductorMusica;

public class Main {
   public static void main(String[] args) {
      ReproductorMusica mp3 = new ReproductorMusica();

      System.out.println(mp3.play());
      System.out.println(mp3.pause());
      System.out.println(mp3.next());
      System.out.println(mp3.play());
      System.out.println(mp3.stop());
      System.out.println(mp3.next());
   }
}
