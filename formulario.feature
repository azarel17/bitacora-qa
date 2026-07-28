Feature: agregar contacto

  Scenario Outline: resgistro de datos 
    When se agrega nombre de contacto
    And se ingresa nombre '<nombre>'
    And se ingresa telefono '<telefono>'
    And se ingresa correo '<correo>'
    And se da clic en agregar contacto
    Then es agregado correctamente 

Examples:
|nombre   |telefono|correo        |resultado                |
|azarel   |5467382 |test@gmail.com|se agrego correctamente  |
|alejandro|hyw55f  |-----         |campos invalidos y vacios|
|------   |------  |------        |campos vacios             |