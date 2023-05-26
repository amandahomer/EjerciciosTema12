/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

/**
 *
 * @author AMANDA
 */
public class funcionesGatos {
    
    private final String nombre;
    private final String imagen;
    
    public funcionesGatos (String nombre, String imagen) {
        this.nombre = nombre;
        this.imagen = imagen;
    }
    
    public String getNombre() {
      return nombre;
    }
    public String getImagen() {
      return imagen;
    }
    @Override
    public String toString() {
      return "<div class=\"accion\"><img src=\"" + imagen + "\" width=\"80\"><div class=\"arrow_box\">&nbsp;Hola, soy " + nombre + "&nbsp;</div></div>";
    }

      public String frases() {
        int i = ((int)(Math.random() * 6));

        String frases = " "; 
        switch(i) {
          case 0:
            frases = "Odio a Pablo Javier";
          break;
          case 1:
            frases = "Me gusta la hierba";
          break;
          case 2:
            frases = "Odio a Jorge Reina";
          break;
          case 3:
            frases = "Me gusta el patinaje sobre hielo";
          break;
          case 4:
            frases = "Me gusta bailar ballet";
          break;
          case 5:
            frases = "Estoy locoooo";
          break;
          default:
       }
      return "<div class=\"accion\"><img src=\"" + imagen + "\" width=\"80\"><div class=\"arrow_box\">&nbsp;" + frases + "&nbsp;</div></div>";
    }
    
}