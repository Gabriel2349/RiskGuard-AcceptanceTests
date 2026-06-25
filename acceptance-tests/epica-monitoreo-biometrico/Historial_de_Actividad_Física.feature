Feature: US03 - Historial de Actividad Física

  Scenario: Escenario Éxito
    Given que el usuario ha seleccionado el rango de fechas del historial
    When el usuario selecciona la opción "Ver búsquedas"
    Then el sistema muestra un gráfico de líneas con el historial de datos.

  Scenario: Escenario Sin Datos
    Given que el usuario ha seleccionado un rango de fechas
    When el usuario selecciona la opción "Ver búsquedas" y no existen registros almacenados en dicho periodo
    Then el sistema muestra un mensaje informativo indicando que no se encontraron datos.

  Scenario: Escenario Error (Rango inválido)
    Given que el usuario ingresa una fecha de fin anterior a la fecha de inicio
    When selecciona la opción "Ver búsquedas"
    Then el sistema muestra un mensaje de error indicando que el rango de fechas es inválido y no permite realizar la consulta.
