# InstaFix — Prototipo de la app

Prototipo navegable de la app **InstaFix** ("Mantenimiento sin espera."), hecho para la feria de la universidad. Es un solo archivo, `index.html`. No hay que instalar nada para usarlo.

**Ver la app:** https://hamp1303-blip.github.io/InstaFix/

Las reglas visuales (logo, colores, tipografía, íconos y estados) están en [DESIGN.md](DESIGN.md).

## Cómo abrirlo

- **En la computadora**: doble clic en `index.html`. Se abre en el navegador dentro de un marco de celular.
- **En el celular**: abre el enlace de GitHub Pages (ver abajo) o escanea el QR.
- **Sin internet**: el prototipo funciona igual. Solo cambia la tipografía, que se ve con la letra del sistema.

## Recorrido de la demo (reto de los 60 segundos)

0. Portada («Soluciones para tu hogar.») → **Necesito un técnico** (cliente) o **Soy técnico** (ver más abajo). **Inicia sesión** va directo al inicio de sesión de cliente. La ilustración es el archivo `ilustracion-inicio.jpg`
1. Inicio de sesión → escribir cualquier correo y contraseña y tocar **Iniciar sesión**, o tocar **Entrar como invitado** (aquí arranca el cronómetro). También están **Crear cuenta**, **Recordarme** y **¿Olvidaste tu contraseña?**; todo es simulado y la contraseña nunca se guarda
2. Inicio → en **¿Qué necesita?** elegir el barrio en **Tu ubicación** (Bella Vista por defecto), el tipo de servicio (**Reparación**, **Instalación** o **Mantenimiento**) y el área, que aparece como tres tarjetas con dibujo (Plomería, Electricidad y **Aire acondicionado**)
3. Aparato → **Aire split**
4. Marca → **Marca X** (LG, Samsung, Nisato, Sankey, Samurai, Marca X o «No sé / otra»)
5. ¿Cuándo lo necesitas? → **Lo antes posible** (el camino rápido de la demo) o **Agendar una cita** (ver más abajo) → **Ver técnicos disponibles**
6. Lista de técnicos → tocar la tarjeta de **Carlos Méndez**
7. Perfil → **Elegir a Carlos**
8. Confirmación → **Confirmar**: aparece el tiempo que tomó el pedido y si se superó el reto
9. Seguimiento: mapa de la Ciudad de Panamá con la ruta del técnico; avanza solo después de 6 segundos. Desde aquí se puede **Llamar** o mandar **Mensaje**
10. Pago y calificación → **Pagar y calificar** → Garantía activa de 15 días → **Reportar problema** (extra)

Solo **Aire acondicionado** pregunta la marca. **Electricidad** y **Plomería** pasan del trabajo a la fecha. Los trabajos de cada área están agrupados por categoría (por ejemplo, en plomería: «Tuberías y fugas», «Baño y cocina» y «Agua caliente y presión»). El servicio se arma con el tipo y el trabajo: «Instalación de luces», «Mantenimiento de aire split». Las opciones de cada área están en `APARATOS`, dentro del `<script>` de `index.html`.

Cualquier opción de los filtros y cualquiera de los tres técnicos funcionan; las pantallas usan lo que se eligió. Todas las pantallas, menos la primera, tienen botón de volver. **Cerrar sesión** (lado del técnico) reinicia la demo; **Volver al inicio** lleva a Inicio sin borrar los pedidos.

## Barra inferior: Mis pedidos, Inicio e Historial

Desde que el cliente entra, casi todas las pantallas tienen una barra abajo con tres botones:

- **Inicio** (al centro, destacado): vuelve a la pantalla de ¿Qué necesita?.
- **Mis pedidos** (a la izquierda): servicios en curso y citas agendadas, con su estado (**Agendada** o **En camino**). Al tocar uno se abre su cita o su seguimiento.
- **Historial** (a la derecha): servicios terminados o cancelados, con técnico, fecha, precio y estrellas. Los dos primeros son ejemplos de muestra.

Cada pedido se guarda al confirmar: pasa a Historial al pagar (**Completado**) o al cancelar la cita (**Cancelado**). La barra no aparece en el inicio de sesión, el registro, el chat, la llamada ni la vista del técnico. Todo se guarda solo mientras la página está abierta.

## Cita agendada

La fecha se elige **antes** de escoger al técnico, para saber quién está libre. En **¿Cuándo lo necesitas?**, el cliente elige entre dos opciones:

- **Lo antes posible**: se muestran los técnicos con el tiempo de llegada estimado.
- **Agendar una cita**: se elige el día (los próximos 7 días) y la hora. Un día o una hora solo se pueden elegir si al menos un técnico está libre (las horas sin técnicos aparecen tachadas, y las que ya pasaron hoy no se pueden elegir). La pantalla dice cuántos técnicos hay libres a esa hora.

En la lista, los técnicos libres a la hora elegida se pueden tocar, y los demás aparecen apagados bajo «No disponibles a esa hora» (Ana, por ejemplo, no atiende fines de semana). Cada técnico tiene su propia agenda.

Después de **Confirmar cita** aparece la pantalla **Cita agendada** con el resumen, **Llamar** y **Mensaje**, y tres botones: **Simular el día de la cita** (sigue con el seguimiento, el pago y la garantía), **Reprogramar** y **Cancelar cita** (gratis hasta 2 horas antes). **Reprogramar** vuelve a elegir fecha y técnico.
Las horas ocupadas son de ejemplo. Los días y horarios de cada técnico están en `TECNICOS` (`dias`, `desde`, `hasta`).

## Lado del técnico

Con **Soy técnico** la app muestra las mismas pantallas de entrada con textos para técnicos. **Crear cuenta de técnico** pide además el servicio que ofrece y el barrio desde donde sale, y avisa que se verificarán la cédula, la foto y las referencias. Al entrar (o con **Ver cómo funciona (demo)**) aparece **Tus trabajos**:

- un interruptor **Disponible / Desconectado** para recibir solicitudes;
- cifras de ejemplo (ganancias de hoy y de la semana, calificación);
- una **solicitud nueva** con servicio, dónde, cuándo y pago estimado, que se puede **Aceptar** o **Rechazar**;
- las **citas agendadas** de la semana.

Todo es de ejemplo: no hay conexión entre la vista del técnico y la del cliente.

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
