Feature: Get Album
# Este archivo obtiene la información de un álbum de Spotify usando el token de autenticación.
  Background:
     # URL base de la API de Spotify
    * url 'https://api.spotify.com/v1'
    # Definir el token de autenticación reutilizando el obtenido en `Spotify.feature`
    * def tokenResponse = call read('SpotifyAuthToken.feature')
    * def accessToken = tokenResponse.accessToken
    * def accessTokenIncorrect = "aeae1818"
    * def accessTokenEmpty = ""
    * header Authorization = 'Bearer ' + accessToken

  Scenario: Get One Album Info
    # Se especifica el endpoint del álbum
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 200

  Scenario: Get One Album and market Info
    # Se especifica el endpoint del álbum
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    #Se usa query param porque los parámetros de consulta deben pasarse explícitamente
    And param market = 'CO'
    When method get
    Then status 200
    #Se valida que la respuesta contenga el ID correcto del álbum
    And match response contains { id: '2YeKV1ibuIz9JhF9Yg89w4' }

  Scenario: Get One Album and two market Info
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4'
    And header Authorization = 'Bearer ' + accessToken
    And param market = 'CO'
    And param market = 'ES'
    When method get
    Then status 200

  Scenario: Get two Album invalid amount
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4,7kFyd5oyJdVX2pIi6P4iHE'
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 400

  Scenario: Get info without album id
    Given path 'albums/'
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 400

  Scenario: Get album with non-existent id
    Given path 'albums/aeio2020232521'
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 400

  Scenario: Get album with artist id
    Given path 'albums/14zUHaJZo1mnYtn6IBRaRP'
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 404

  Scenario: Get album with bad token
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4'
    And header Authorization = 'Bearer ' + accessTokenIncorrect
    When method get
    Then status 401

  Scenario: Get album with empty token
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4'
    And header Authorization = 'Bearer ' + accessTokenEmpty
    When method get
    Then status 400

  Scenario: Get album without token
    Given path 'albums/2YeKV1ibuIz9JhF9Yg89w4'
    # Elimina cualquier token de la solicitud
    And header Authorization = null
    When method get
    Then status 400
