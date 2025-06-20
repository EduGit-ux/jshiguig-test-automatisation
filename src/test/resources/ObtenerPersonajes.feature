Feature: Obtener Personajes Marvel Characters API

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  @id:1 @CA-CONSULTAR-TODOS-LOS-PERSONAJES
  Scenario: T-API-CONSULTAR-TODOS-LOS-PERSONAJES
    Given url baseUrl
    When method get
    Then status 200

  @id:2 @CA-API-CONSULTAR-PERSONAJE-NO-EXISTE
  Scenario: T-API-CONSULTAR-PERSONAJE-NO-EXISTE
    Given url baseUrl + '/' + 999
    When method get
    Then status 404

  @id:3 @CA-API-CONSULTAR-PERSONAJE-ID-EXISTE-200
  Scenario: T-API-CONSULTAR-PERSONAJE-ID-EXISTE-200
    Given url baseUrl + '/' + 985
    When method get
    Then status 200
    And match response.name == 'Eduardo Shigui'


