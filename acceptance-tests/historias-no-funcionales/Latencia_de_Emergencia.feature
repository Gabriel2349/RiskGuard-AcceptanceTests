Feature: US-NF04 - Latencia de Emergencia

  Scenario: Tiempo de Respuesta
    Given que activo una alerta
    When llega al supervisor
    Then el tiempo es inferior a 1 segundo.
