package api.spotify.Spotify;

// Importamos la librería de Karate para ejecutar las pruebas con JUnit5
import com.intuit.karate.junit5.Karate;

/**
 * Clase que actúa como un Runner para ejecutar las pruebas de Karate.
 * En este caso, se encarga de ejecutar el feature "SpotifyAuthToKen.feature",
 * donde se obtiene el token de autenticación para las solicitudes a la API de Spotify.
 */
public class SpotifyAuthTokenRunner {

    /**
     * Métod que ejecuta el archivo "SpotifyAuthToKen.feature".
     *
     * @return Ejecuta el feature "SpotifyAuthToKen.feature" que obtiene el token de autenticación.
     */
    @Karate.Test
    Karate PostToken() {
        // Ejecuta el archivo "SpotifyAuthToKen.feature" dentro del mismo paquete
        return Karate.run("SpotifyAuthToken").relativeTo(getClass());
    }
}

