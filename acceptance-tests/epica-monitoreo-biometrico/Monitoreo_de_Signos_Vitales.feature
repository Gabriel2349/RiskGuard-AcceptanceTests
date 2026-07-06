Feature: US01 - Monitoreo de Signos Vitales

  Scenario: Visualización Biométrica
    Given que el supervisor accede al panel de control
    When el supervisor selecciona a un trabajador específico
    Then el sistema muestra los indicadores de frecuencia cardíaca y temperatura en tiempo real.

  Scenario: Dispositivo Desconectado
    Given que el trabajador ha apagado su equipo
    When el supervisor intenta visualizar sus signos vitales
    Then el sistema muestra un mensaje indicando que el dispositivo se encuentra fuera de línea.
 
  Scenario: Validación masiva de umbrales biométricos
    Given que el supervisor está monitoreando el dashboard en tiempo real
    When el sistema recibe los siguientes valores de signos vitales:
      | FrecuenciaCardiaca | SaturacionOxigeno | NivelRiesgo |
      | 60                 | 99                | Normal      |
      | 110                | 94                | AlertaMedia |
      | 165                | 85                | Emergencia  |
    Then el sistema debe mostrar el indicador "<NivelRiesgo>" correspondiente en el perfil del trabajador

    Examples:
      | NivelRiesgo |
      | Normal      |
      | AlertaMedia |
      | Emergencia  |
