Feature: Get Album from Spotify
  # Obtiene información de álbumes usando distintos tokens y escenarios de validación

  Background:
    * url 'https://api.spotify.com/v1'
    * def tokenResponse = call read('SpotifyAuthToken.feature')
    * def accessToken = tokenResponse.accessToken
    * def invalidToken = 'aeae1818'
    * def emptyToken = ''
    * header Authorization = 'Bearer ' + accessToken
    * def albumId = '2YeKV1ibuIz9JhF9Yg89w4'
    * def artistId = '14zUHaJZo1mnYtn6IBRaRP'

  Scenario: Get album info successfully
    Given path '/albums', albumId
    #Given path 'albums', albumId
    When method get
    Then status 200

  Scenario: Get album info filtered by market
    Given path 'albums', albumId
    And param market = 'CO'
    When method get
    Then status 200
    And match response.id == albumId

  Scenario: Get album info with multiple markets (invalid usage)
    Given path 'albums', albumId
    And param market = ['CO', 'ES']
    When method get
    Then status 400

  Scenario: Get multiple albums (invalid request format)
    Given path 'albums', albumId + ',7kFyd5oyJdVX2pIi6P4iHE'
    When method get
    Then status 400

  Scenario: Get album without ID
    Given path 'albums/'
    When method get
    Then status 400

  Scenario: Get non-existent album
    Given path 'albums/aeio2020232521'
    When method get
    Then status 400

  Scenario: Get album using artist ID
    Given path 'albums', artistId
    When method get
    Then status 404

  Scenario: Get album with invalid token
    * header Authorization = 'Bearer ' + invalidToken
    Given path 'albums', albumId
    When method get
    Then status 401

  Scenario: Get album with empty token
    * header Authorization = 'Bearer ' + emptyToken
    Given path 'albums', albumId
    When method get
    Then status 400

  Scenario: Get album without token
    * header Authorization = null
    Given path 'albums', albumId
    When method get
    Then status 400

