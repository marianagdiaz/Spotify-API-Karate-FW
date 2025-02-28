# 🎵 **Automated API Testing for Spotify with Karate & BDD**

Este proyecto implementa **pruebas automatizadas** para la API de **Spotify** utilizando **Karate DSL** con la sintaxis de **Cucumber (Gherkin)**, siguiendo el enfoque **BDD (Behavior Driven Development)** con Given-When-Then.

---
# 🤖 ¿Qué es Karate DSL?

**Karate DSL** (Domain-Specific Language) es un **lenguaje específico de dominio** diseñado para facilitar la automatización de pruebas de API. Es parte del framework **Karate**, el cual combina la simplicidad de **Cucumber** con un potente motor de ejecución basado en **Java**.

## 🔹 Características de **Karate DSL**
- Permite escribir pruebas en un formato **simple y legible**, sin necesidad de conocimientos avanzados en programación.
- Usa una **sintaxis basada en Gherkin**, similar a Cucumber (`Given, When, Then`).
- Soporta **peticiones HTTP** (`GET`, `POST`, `PUT`, `DELETE`), validaciones de JSON y XML, autenticación, y más.



## 📌 **Contexto y Objetivo del Proyecto**

Spotify ofrece una API pública que permite acceder a información de canciones, artistas, álbumes y playlists.

**Objetivos del proyecto:**

✅ Validar que los endpoints de la API de Spotify devuelvan respuestas correctas en diferentes escenarios.  
✅ Implementar pruebas siguiendo el enfoque **BDD con Given-When-Then** usando **Cucumber-Gherkin:**  
#### Explicación breve de solicitud:
1. **`Given url`** → Define la URL de la API.
2. **`And header Authorization`** → Agrega el token de autenticación.
3. **`When method GET`** → Ejecuta la petición GET.
4. **`Then status 200`** → Verifica que la respuesta tenga código HTTP 200.
5. *`And match response.name == 'Nombre del Álbum'`*

✅ Generar reportes detallados en **Karate Reports** 

---

## 🛠 **Tecnologías Utilizadas**

| Tecnología | Descripción |
|------------|------------|
| **Java 17** | Lenguaje base para Karate DSL |
| **Karate DSL** | Framework de pruebas API basado en BDD |
| **Gherkin (Cucumber Syntax)** | Para escribir pruebas en Given-When-Then |
| **JUnit 5** | Motor de ejecución de pruebas |
| **Maven** | Gestión de dependencias |
| **GitHub Actions** | Integración continua |

---
## Requisitos

- Java 17 o superior
- Maven
- IntelliJ IDEA (opcional, pero recomendado)

## Instalación

1. Clona el repositorio:
   ```sh
   git clone https://github.com/marianagdiaz/Spotify-API-Karate-FW.git
--
* Accede al directorio del proyecto: `cd Spotify-API-Karate-FW` 
* Ejecuta las pruebas con Maven: `mvn test`


## Reportes
Después de ejecutar las pruebas, puedes visualizar el reporte HTML abriendo:
target/karate-reports/karate-summary.html en tu navegador.

## Conclusión
Este proyecto permitió poner en práctica pruebas automatizadas en una API real, verificando la correcta respuesta de los endpoints y la autenticación. Se evidenció la importancia de la automatización en la validación de APIs y la utilidad de Karate para simplificar este proceso.

