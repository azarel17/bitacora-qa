Feature: Búsqueda de personas en Facebook

  Scenario Outline: Inicia sesión de forma exitosa
    When el usuario ingresa correo '<correo>'
    And el usuario ingresa la contraseña '<password>'
    and el usuario da clic en "iniciar sesión"
    Then es autenticado correctamente

    Examples:
    |nombre-usuario |apodo|grupos           |resultado        |
    |alejandro      |alex |ventas y mas     |cuentas alejandro|
    |azarel         |aza  |trueques y ventas|cuentas azarel   |
    |@6gdtd         |#hdg |%gsts            |sin resultado    |

  Scenario: Búsqueda sin resultados
    When busca un nombre inexistente
    Then el sistema indica que no se encontraron resultados

  Scenario: Búsqueda utilizando And
    And se encuentra en la página principal
    When escribe un nombre en la barra de búsqueda
    Then el sistema muestra los resultados encontrados
    And permite acceder al perfil de la persona