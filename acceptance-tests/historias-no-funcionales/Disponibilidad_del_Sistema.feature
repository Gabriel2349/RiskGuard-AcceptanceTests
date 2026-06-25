Feature: US-NF01 - Disponibilidad del Sistema

  Scenario: Verificación de Uptime
    Given que el sistema está activo
    When audito los logs
    Then el tiempo de inactividad es menor a 0.1%.
