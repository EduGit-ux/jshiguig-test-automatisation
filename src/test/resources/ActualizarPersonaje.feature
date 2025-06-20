Feature: Actualizar Personajes Marvel Characters API

  Background:
    * configure ssl = true
    * def UrlApi = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * def requestBody = read('classpath:data/BodyActualizarPersonaje.json')


  @id:1 @CA-ACTUALIZAR-PERSONAJE-EXISTENTE
  Scenario: T-API-ACTUALIZAR-PERSONAJE-EXISTENTE
    Given url UrlApi +'/' + 985
    And header Content-Type = 'application/json'
    And request requestBody
    When method put
    Then status 200
    And match response contains { name: "Eduardo Shigui" }