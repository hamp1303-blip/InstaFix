# InstaFix — Prototipo de la app

Prototipo navegable de la app **InstaFix** ("Llega, cobra lo justo, responde."), hecho para la feria de la universidad. Es un solo archivo, `index.html`. No hay que instalar nada para usarlo.

**Ver la app:** https://hamp1303-blip.github.io/InstaFix/

Las reglas visuales (logo, colores, tipografía, íconos y estados) están en [DESIGN.md](DESIGN.md).

## Cómo abrirlo

- **En la computadora**: doble clic en `index.html`. Se abre en el navegador dentro de un marco de celular.
- **En el celular**: abre el enlace de GitHub Pages (ver abajo) o escanea el QR.
- **Sin internet**: el prototipo funciona igual. Solo cambia la tipografía, que se ve con la letra del sistema.

## Recorrido de la demo (reto de los 60 segundos)

1. Inicio de sesión → escribir cualquier correo y contraseña y tocar **Iniciar sesión**, o tocar **Entrar como invitado** (aquí arranca el cronómetro). También están **Regístrate ahora**, **Recordarme** y **¿Olvidaste tu contraseña?**; todo es simulado y la contraseña nunca se guarda
2. Inicio → elegir el barrio en **Tu ubicación** (Bella Vista por defecto) → **Aire acondicionado**
3. Tipo de servicio → **Reparación**
4. Aparato → **Aire split**
5. Marca → **Marca X**
6. Lista de técnicos → tocar la tarjeta de **Carlos Méndez**
7. Perfil → **Elegir a Carlos**
8. Confirmación → **Confirmar**: aparece el tiempo que tomó el pedido y si se superó el reto
9. Seguimiento: mapa de la Ciudad de Panamá con la ruta del técnico; avanza solo después de 6 segundos. Desde aquí se puede **Llamar** o mandar **Mensaje**
10. Pago y calificación → **Pagar y calificar** → Garantía activa de 15 días → **Reportar problema** (extra)

Cualquier opción de los filtros y cualquiera de los tres técnicos funcionan; las pantallas usan lo que se eligió. Todas las pantallas, menos la bienvenida, tienen botón de volver. **Volver al inicio** reinicia la demo.

## Ubicaciones, mensajes y llamadas

- **Ubicaciones**: el cliente elige uno de 15 barrios de la Ciudad de Panamá (Bella Vista, El Cangrejo, Costa del Este, San Miguelito…). Cada técnico sale de su propio barrio (Carlos de El Cangrejo, Ana de San Francisco, Luis de Betania). La app calcula la distancia y el tiempo de llegada, y ordena la lista por el que llega primero.
- **Mensaje**: chat con el técnico, con respuestas rápidas («¿Cuánto te falta?», «¿Cuánto me va a costar?»…) o texto libre. El técnico responde solo, según lo que se le pregunte.
- **Llamar**: llamada simulada con timbre, cronómetro y botones de silenciar, altavoz y colgar. No marca a ningún número real.

## Cómo cambiar los datos

Los barrios y sus coordenadas están al principio del bloque `<script>` de `index.html`, en `BARRIOS`; los técnicos (nombres, barrio de salida, precios, reseñas), justo debajo, en la lista `TECNICOS`. Se pueden editar con el Bloc de notas o con [Visual Studio Code](https://code.visualstudio.com) (gratis). Los colores están al principio del bloque `<style>`, en `:root`.

## Subirlo a GitHub y publicarlo gratis (sin instalar nada)

1. Crea una cuenta en [github.com](https://github.com) si no tienes.
2. Arriba a la derecha, toca **+ → New repository**. Nombre: `mantenimiento-sin-espera`, visibilidad **Public**, y luego **Create repository**.
3. En la página del repo nuevo, toca **uploading an existing file**. Arrastra `index.html` y `README.md`, escribe un mensaje como "Primera versión del prototipo" y toca **Commit changes**.
4. Para publicarlo, ve a **Settings → Pages**. En *Branch* elige `main` y la carpeta `/ (root)`, y toca **Save**.
5. Después de 1 o 2 minutos aparece el enlace, con la forma `https://TU-USUARIO.github.io/mantenimiento-sin-espera/`. Ese es el enlace para el QR.
6. Para guardar un avance nuevo, vuelve a subir el `index.html` cambiado con **Add file → Upload files**. GitHub guarda el historial de cada versión.

Si prefieren no usar el navegador, [GitHub Desktop](https://desktop.github.com) (gratis) hace lo mismo con botones: clonar el repo en esta carpeta y usar **Commit** y **Push** después de cada cambio.

## QR para el stand

Con el enlace de GitHub Pages, genera un QR **estático** en [QR Code Monkey](https://www.qrcode-monkey.com), que no caduca. Ponle el logo en el centro y los colores azul `#0B2545` y naranja `#FF6B00`.

## Plan del proyecto

El plan completo, las encuestas, la marca y los datos de ejemplo están en el documento del plan: https://claude.ai/artifact/CvKubrLH1XZQjih8Uk7XN1
