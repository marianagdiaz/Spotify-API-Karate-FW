package examples.Spotify;

// Importamos la librería de Karate para ejecutar las pruebas con JUnit5
import com.intuit.karate.junit5.Karate;

/**
 * Clase que actúa como un Runner para ejecutar las pruebas de Karate.
 * En este caso, se encarga de ejecutar el feature "Spotify.feature",
 * donde se obtiene el token de autenticación para las solicitudes a la API de Spotify.
 */
public class SpotifyRunner {

    /**
     * Métod que ejecuta el archivo "Spotify.feature".
     *
     * @return Ejecuta el feature "Spotify.feature" que obtiene el token de autenticación.
     */
    @Karate.Test
    Karate PostToken() {
        // Ejecuta el archivo "Spotify.feature" dentro del mismo paquete
        return Karate.run("Spotify").relativeTo(getClass());
    }
}

