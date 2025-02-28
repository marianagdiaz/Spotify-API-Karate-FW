package api.spotify.Spotify;

import com.intuit.karate.junit5.Karate;

public class GetAlbumRunner {
    @Karate.Test
    Karate testGetAlbum() {
        return Karate.run("get-album").relativeTo(getClass());
    }
}

/*@Karate.Test → Indica que es una prueba de Karate.
 Karate.run("get-album") → Especifica que se ejecutará el archivo get-album.feature.
.relativeTo(getClass()) → Busca el archivo dentro del mismo paquete donde está la clase GetAlbumRunner.*/