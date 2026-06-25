Feature: US-NF12 - Autenticación MFA

  Scenario: Inicio de Sesión Seguro
    Given que ingreso a la plataforma
    When introduzco la clave
    Then el sistema solicita el segundo factor.
