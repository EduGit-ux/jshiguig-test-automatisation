Feature: Eliminar personajes Marvel Characters API

  Background:
    * configure ssl = true

  @id:1 @CA-ELIMINAR-PERSONAJE-EXITOSO-200
  Scenario: T-API-ELIMINAR-PERSONAJE-EXITOSO-200
    Given url 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters/985'
    And header Content-Type = 'application/json'
    When method delete
    Then status 204