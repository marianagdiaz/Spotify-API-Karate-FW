# 🎵 **Automated API Testing for Spotify with Karate & BDD**

Este proyecto implementa **pruebas automatizadas** para la API de **Spotify** utilizando **Karate DSL** con la sintaxis de **Cucumber (Gherkin)**, siguiendo el enfoque **BDD (Behavior Driven Development)** con Given-When-Then.

---

## 📌 **Contexto y Objetivo del Proyecto**

Spotify ofrece una API pública que permite acceder a información de canciones, artistas, álbumes y playlists.

**Objetivos del proyecto:**

✅ Validar que los endpoints de la API de Spotify devuelvan respuestas correctas en diferentes escenarios.  
✅ Implementar pruebas siguiendo el enfoque **BDD con Given-When-Then** usando **Cucumber-Gherkin**.  
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

