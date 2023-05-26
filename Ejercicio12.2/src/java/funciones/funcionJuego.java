/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;

/**
 *
 * @author AMANDA
 */
public class funcionJuego {
    //Nombre e imagen de los jugadores
    private final String nombre;
    private final String  imagen;
    
    
    public funcionJuego(String nombre, String imagen){
        this.nombre = nombre;
        this.imagen = imagen;
    }
    
    public String getNombre(){
        return nombre;
    }
    
    public String getImagen(){
        return imagen;
    }
    
    //Se presentan los jugadores
    @Override
    public String toString(){
        return "<img src='" + imagen + "' width='100'>Hola, soy " + nombre + "<br>";
    }
    
    //Elegimos un numero al azar entre 0, 1 y 2. 0 es piedra, 1 es papel y 2 es tijera.
    public int juego(){
        int num= (int)(Math.random()* 3);
        return num;
    }
    
    //Resultado de las jugadas.
    public int jugada(int jug1, int jug2){
        String resultado = " ";
        int aux = 0;
        
        if ((jug1 == 0 && jug2 == 0) || (jug1 == 1 && jug2 == 1) || (jug1 == 2 && jug2 == 2)) {
            resultado = "¡Empate!";
            aux += 0;
        } else if(jug1 == 0 && jug2 == 2) {
            resultado = "Piedra gana a papel, un punto para " + nombre;
            aux += 1;

        }else if (jug1 == 0 && jug2 == 1) {
            resultado = "Papel gana a piedra, un punto para " + nombre;
            aux += 2;

        }else if (jug1 == 1 && jug2 == 2) {
            resultado = "Tijera gana a papel, un punto para " + nombre;
            aux += 2;
        } else if (jug1 == 1 && jug2 == 0) {
            resultado = "Papel gana a piedra, un punto para " + nombre;
            aux += 1;

        } else if (jug1 == 2 && jug2 == 1) {
            resultado = "Tijera gana a papel, un punto para " + nombre;
            aux += 1;

        }else if (jug1 == 2 && jug2 == 0) {
            resultado = "Piedra gana a tijera, un punto para " + nombre;
            aux += 2;

        }
        return aux;
    }
    
    //Metodo que devuelve la foto de las opciones de la jugada, piedra, papel o tijera.
    public String imagenesJugada(int numero) {
        
        String resultado = "";
        
        switch(numero) {
            case 0:
                resultado = "<img src='" + imagen + "' width='100'>" + "<img src='" +"piedra.jpg" + "' width='100'>";
                break;
            case 1:
                resultado = "<img src='" + imagen + "' width='100'>" + "<img src='" +"papel.jpg" + "' width='100'>";
                break;
            case 2:
                resultado = "<img src='" + imagen + "' width='100'>" + "<img src='" +"tijera.jpg" + "' width='100'>";
                break;
            default:
                break;
        }
        return resultado;
    }
    
}