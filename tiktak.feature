Feature: publicar videos en tiktak

   Background:
    Given el usuario tiene una cuenta de tiktak activa
    And ha iniciado sesión correctamente

   # Se valida que el usuario puede subir contenido desde la aplicación
    
    @humo
       Scenario: Publicar un video con descripción
          Given el usuario selecciona un video desde la galería
          When agrega la descripción "Mi primer video"
          And presiona el botón "Publicar"
          Then el video se publica correctamente
          And aparece en el perfil del usuario

    @regresion
       Scenario: Publicar un video con música
          Given el usuario selecciona un video de la galería
          When agrega una canción desde la biblioteca de tiktak
          And presiona el botón "Publicar"
          Then el video se publica con la música seleccionada
          And el video aparece en la sección de publicaciones

    @critico
       Scenario Outline: Validar la publicación de videos con diferente descripción
          Given el usuario selecciona un video de la galería
          When escribe la descripción "<descripción>"
          And presiona el botón "Publicar"
          Then el sistema muestra el resultado "<resultado>"

    Examples:
      | descripción                     | resultado                        |
      | Hola tiktak                     | Publicación exitosa              |
      | Mi viaje a la playa             | Publicación exitosa              |
      | Video de cocina                 | Publicación exitosa              |
      |                                 | Error: descripción requerida      |