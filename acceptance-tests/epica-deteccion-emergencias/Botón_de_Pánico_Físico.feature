Feature: US05 - Botón de Pánico Físico

  Scenario: Activación de Pánico
    Given que el trabajador se encuentra en una situación de peligro inminente
    When el trabajador presiona el botón físico del chaleco por 3 segundos
    Then el sistema emite una señal sonora y envía una alerta SOS al centro de monitoreo.

  Scenario: Activación Accidental
    Given que el trabajador presiona el botón por error
    When el sistema solicita confirmación en la app móvil
    Then el sistema cancela la alerta si no se confirma la emergencia en 10 segundos.
