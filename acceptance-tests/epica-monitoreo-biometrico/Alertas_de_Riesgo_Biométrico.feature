Feature: US02 - Alertas de Riesgo Biométrico

  Scenario: Notificación de Fatiga
    Given que el sistema detecta que el pulso del trabajador excede el umbral configurado
    When el sistema procesa los datos biométricos
    Then el sistema envía una notificación push de alta prioridad al dispositivo móvil del supervisor.

  Scenario: Falsa Alerta por Sensor Obstruido
    Given que el sensor biométrico pierde contacto parcial con la piel
    When el sistema detecta lecturas erráticas
    Then el sistema muestra una advertencia de "Revisar colocación de sensor" antes de emitir una alerta de salud.
    
  Scenario: Clasificación y severidad de riesgos en tiempo real
    Given que el sistema está analizando el flujo de datos biométricos de los operarios
    When el motor de IA identifica las siguientes anomalías:
      | Tipo de Riesgo     | Valor Detectado | Umbral de Seguridad | Nivel de Severidad |
      | Arritmia           | 145 BPM         | 100 BPM             | Alta               |
      | Estrés Térmico     | 39.5 °C         | 38.0 °C             | Media              |
      | Deshidratación     | Nivel Crítico   | Nivel Moderado      | Alta               |
    Then el sistema debe disparar la notificación correspondiente según el Nivel de Severidad
    And debe quedar registrado en el historial de eventos del supervisor
