package api.spotify.Spotify;

import com.intuit.karate.junit5.Karate;

class queryOracleRunner {

    @Karate.Test
    Karate testQueryOracle() {
        return Karate.run("query-oracle").relativeTo(getClass());
    }
}
