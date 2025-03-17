package api.spotify.Spotify;

import com.intuit.karate.junit5.Karate;

public class GetAlbumsRunner {
    @Karate.Test
    Karate testGetAlbums() {
        return Karate.run("Get-albums").relativeTo(getClass());
    }
}