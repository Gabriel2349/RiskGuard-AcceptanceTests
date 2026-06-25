Feature: US06 - Geolocalización de Emergencia

  Scenario: Localización en Mapa
    Given que el sistema ha recibido una alerta de emergencia
    When el supervisor abre la notificación
    Then el sistema resalta la ubicación exacta del trabajador sobre el plano digital de la obra.

  Scenario: Error de Señal GPS
    Given que el trabajador se encuentra en un sótano sin señal GPS
    When el sistema intenta rastrear su ubicación
    Then el sistema muestra la última posición conocida y el nivel de piso registrado por los beacons internos.
