Feature: Crear Personajes Marvel Characters API

  Background:
    * configure ssl = true
    * def UrlApi = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * def requestBody = read('classpath:data/BodyCrearpersonaje.json')

  @id:1 @CA-CREAR-PERSONAJE
  Scenario: T-API-CREAR-PERSONAJE
    Given url UrlApi
    And request requestBody
    And header Content-Type = 'application/json'
    When method post
    Then status 201
    And match response contains { name: 'Eduardo Shigui' }


  @id:2 @CA-CREAR-PERSONAJE-DUPLICADO
  Scenario: T-API-CREAR-PERSONAJE-DUPLICADO
    Given url UrlApi
    And request requestBody
    And header Content-Type = 'application/json'
    When method post
    Then status 400


