Feature: US01 - Monitoreo de Signos Vitales

  Scenario: Visualización Biométrica
    Given que el supervisor accede al panel de control
    When el supervisor selecciona a un trabajador específico
    Then el sistema muestra los indicadores de frecuencia cardíaca y temperatura en tiempo real.

  Scenario: Dispositivo Desconectado
    Given que el trabajador ha apagado su equipo
    When el supervisor intenta visualizar sus signos vitales
    Then el sistema muestra un mensaje indicando que el dispositivo se encuentra fuera de línea.
