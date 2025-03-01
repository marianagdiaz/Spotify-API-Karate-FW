
Feature: Token

  Background:
      # URL base para la autenticación
    * url 'https://accounts.spotify.com'

     # Encabezado necesario para enviar datos en formato x-www-form-urlencoded
    * header Content-Type = 'application/x-www-form-urlencoded'

  Scenario: Post auth token
    # Se hace la solicitud para obtener el token
    Given path 'api/token'

    # Datos requeridos para la autenticación con client_credentials
    #Usamos form field en lugar de request
    #En Postman, usaste x-www-form-urlencoded, por lo que en Karate se traduce a form field

    And form field grant_type = 'client_credentials'
    And form field client_id = 'Id'
    And form field client_secret = 'Number Client Secret'

    When method post
    Then status 200

    # Se guarda el token en una variable para reutilizarlo en otras pruebas
    * def accessToken = response.access_token
    * print 'access_token', accessToken


  
