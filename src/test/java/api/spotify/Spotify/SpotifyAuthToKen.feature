
Feature: Token

  Background:
    * url 'https://accounts.spotify.com'
    * header Content-Type = 'application/x-www-form-urlencoded'

  Scenario: Post auth token
    Given path 'api/token'
    And form field grant_type = 'client_credentials'
    And form field client_id = 'xxx'
    And form field client_secret = 'xxx'

    When method post
    Then status 200
    * def accessToken = response.access_token
    * print 'access_token', accessToken


  
