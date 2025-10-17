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

  Scenario: Get two Albums Info
    # Se especifica el endpoint del álbum
    Given path '/albums'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '2YeKV1ibuIz9JhF9Yg89w4,7kFyd5oyJdVX2pIi6P4iHE'
    When method get
    Then status 200

  Scenario: Get twenty Albums Info
    # Se especifica el endpoint del álbum
    Given path '/albums'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '2YeKV1ibuIz9JhF9Yg89w4,7kFyd5oyJdVX2pIi6P4iHE,5L3PAo50R75rOZLlEvokZZ,25Gsw8B8ZpFFhOlx9fF1LR,2c4kX5vwi2QnarQQyfXsA1,3w4tn0BuFHNjiqGMevGaz9,3V2ApPxUSquOkjLQU3wmjh,2cOBkSXvFSkt37e9DHKqT0,0aX0UXrHG2ceYIxTQcqJdA,5FYFgRnlsl9Qrm1xD8cqo7,0leCm7DasgqP70lhOVeXyU,67JIMv9vCB2ukBdEbtUmUG,3wU2wXacpwqetSRloR0nMX,7nQEMEmUDb0KRNlbTUi4mE,19DbwnDUWS0CuJF92sc4Wn,4B4Elma4nNDUyl6D5PvQkj,6NmYJszy5BaEm1WF4tJL7Z,2PiqQiq61HCKiK0LPzdptP,2Mhh5KI8hfKMkpHs7xkWBt,1hUqwHvAVIEXMXqIrkHgPo'
    When method get
    Then status 200

  Scenario: Get nineteen Albums Info
    # Se especifica el endpoint del álbum
    Given path '/albums'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '2YeKV1ibuIz9JhF9Yg89w4,7kFyd5oyJdVX2pIi6P4iHE,5L3PAo50R75rOZLlEvokZZ,25Gsw8B8ZpFFhOlx9fF1LR,2c4kX5vwi2QnarQQyfXsA1,3w4tn0BuFHNjiqGMevGaz9,3V2ApPxUSquOkjLQU3wmjh,2cOBkSXvFSkt37e9DHKqT0,0aX0UXrHG2ceYIxTQcqJdA,5FYFgRnlsl9Qrm1xD8cqo7,0leCm7DasgqP70lhOVeXyU,67JIMv9vCB2ukBdEbtUmUG,3wU2wXacpwqetSRloR0nMX,7nQEMEmUDb0KRNlbTUi4mE,19DbwnDUWS0CuJF92sc4Wn,4B4Elma4nNDUyl6D5PvQkj,6NmYJszy5BaEm1WF4tJL7Z,2PiqQiq61HCKiK0LPzdptP,2Mhh5KI8hfKMkpHs7xkWBt'
    When method get
    Then status 200

  Scenario: Get Fifteen Albums Info
    # Se especifica el endpoint del álbum
    Given path '/albums'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '2YeKV1ibuIz9JhF9Yg89w4,7kFyd5oyJdVX2pIi6P4iHE,5L3PAo50R75rOZLlEvokZZ,25Gsw8B8ZpFFhOlx9fF1LR,2c4kX5vwi2QnarQQyfXsA1,3w4tn0BuFHNjiqGMevGaz9,3V2ApPxUSquOkjLQU3wmjh,2cOBkSXvFSkt37e9DHKqT0,0aX0UXrHG2ceYIxTQcqJdA,5FYFgRnlsl9Qrm1xD8cqo7,0leCm7DasgqP70lhOVeXyU,67JIMv9vCB2ukBdEbtUmUG,3wU2wXacpwqetSRloR0nMX,7nQEMEmUDb0KRNlbTUi4mE,19DbwnDUWS0CuJF92sc4Wn'
    When method get
    Then status 200

  Scenario: Get twentyone Albums Info
    # Se especifica el endpoint del álbum
    Given path '/albums'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '2YeKV1ibuIz9JhF9Yg89w4,7kFyd5oyJdVX2pIi6P4iHE,5L3PAo50R75rOZLlEvokZZ,25Gsw8B8ZpFFhOlx9fF1LR,2c4kX5vwi2QnarQQyfXsA1,3w4tn0BuFHNjiqGMevGaz9,3V2ApPxUSquOkjLQU3wmjh,2cOBkSXvFSkt37e9DHKqT0,0aX0UXrHG2ceYIxTQcqJdA,5FYFgRnlsl9Qrm1xD8cqo7,0leCm7DasgqP70lhOVeXyU,67JIMv9vCB2ukBdEbtUmUG,3wU2wXacpwqetSRloR0nMX,7nQEMEmUDb0KRNlbTUi4mE,19DbwnDUWS0CuJF92sc4Wn,4B4Elma4nNDUyl6D5PvQkj,6NmYJszy5BaEm1WF4tJL7Z,2PiqQiq61HCKiK0LPzdptP,2Mhh5KI8hfKMkpHs7xkWBt,1hUqwHvAVIEXMXqIrkHgPo,3iA6lFPydNrgFd6s1Hojii'
    When method get
    Then status 400

  Scenario: Get 2 albums with one existing and one artist ID
    # Se especifica el endpoint del álbum
    Given path '/albums'
    # Se agrega el token de autenticación en el encabezado
    And header Authorization = 'Bearer ' + accessToken
    And param ids = '3iA6lFPydNrgFd6s1Hojii,14zUHaJZo1mnYtn6IBRaRP'
    When method get
    Then status 200