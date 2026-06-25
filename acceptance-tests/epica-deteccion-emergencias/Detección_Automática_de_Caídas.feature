Feature: US04 - Detección Automática de Caídas

  Scenario: Detección SOS
    Given que los acelerómetros del casco detectan un impacto brusco
    When el sistema confirma la falta de movimiento por 5 segundos
    Then el sistema activa el protocolo de emergencia enviando la alerta al supervisor.

  Scenario: Falso Positivo (Cancelación)
    Given que el trabajador ha dejado caer accidentalmente su casco
    When el sistema inicia la cuenta regresiva de alerta
    Then el sistema permite al trabajador presionar el botón "Cancelar Alerta" para detener el envío del mensaje SOS.
