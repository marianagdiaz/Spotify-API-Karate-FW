
Feature: Token

  Background:
    * url 'https://accounts.spotify.com'
    * header Content-Type = 'application/x-www-form-urlencoded'

  Scenario: Post auth token
    Given path 'api/token'
    And form field grant_type = 'client_credentials'
    And form field client_id = '1bc9a0fdadf44d09a9176bdcc7555a59'
    And form field client_secret = '5285c3a6fd1b4d96ba0946cb7fbb4d86'

    When method post
    Then status 200
    * def accessToken = response.access_token
    * print 'access_token', accessToken


  
