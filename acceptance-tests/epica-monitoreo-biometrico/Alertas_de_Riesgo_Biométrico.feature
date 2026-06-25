Feature: US02 - Alertas de Riesgo Biométrico

  Scenario: Notificación de Fatiga
    Given que el sistema detecta que el pulso del trabajador excede el umbral configurado
    When el sistema procesa los datos biométricos
    Then el sistema envía una notificación push de alta prioridad al dispositivo móvil del supervisor.

  Scenario: Falsa Alerta por Sensor Obstruido
    Given que el sensor biométrico pierde contacto parcial con la piel
    When el sistema detecta lecturas erráticas
    Then el sistema muestra una advertencia de "Revisar colocación de sensor" antes de emitir una alerta de salud.
    