# InstaFix — Sistema de diseño

Reglas visuales de la app. Si cambian algo en `index.html`, sigan esto para que todas las pantallas se vean como una sola app. Está basado en la hoja de marca de InstaFix y en las reglas de la guía [impeccable](https://github.com/pbakaus/impeccable) para apps (modo *Operate*: lo conocido y lo consistente primero).

## Marca

- **Logo**: llave inglesa cuyo mango es un rayo («la llave repara; el mango en rayo dice *al instante*»). Está dibujado en SVG dentro de `index.html` (símbolo `#i-marca`) y se reutiliza en la app y en el ícono de la pestaña.
  - Ícono de app: cuadro naranja `#F28C28` con la llave en azul marino.
  - Versión oscura: fondo azul marino, cabeza blanca, rayo naranja (variable `--rayo`).
- **Nombre**: «Insta» en el color del texto + «Fix» en naranja, Rubik 600, letra un poco apretada (−0,03 em).
- **Eslogan**: «Mantenimiento sin espera.»

## Color

| Token | Valor | Uso |
| --- | --- | --- |
| `--tinta` | `#13213C` | Texto principal, encabezado de marca, íconos de oficio |
| `--naranja` | `#F28C28` | Solo acción principal (botones), selección actual y la ruta del mapa |
| `--naranja-texto` | `#A9520A` | Naranja cuando es texto sobre fondo claro (legible) |
| `--fondo` | `#FDF6EE` | Fondo de la app: crema cálido, igual que la portada |
| `--tarjeta` / `--tarjeta-borde` / `--tarjeta-sel` | `#FEF1E4` / `#F6D7BB` / `#FDE3C8` | Tarjetas y opciones elegibles (áreas, técnicos, chips, día y hora): durazno suave con borde; la elegida lleva borde naranja y fondo más intenso |
| `--superficie` | `#FFFFFF` | Tarjetas, campos, listas |
| `--neutro` | `#EFECE5` | Botones secundarios, chips de resumen |
| `--gris` | `#565F73` | Texto secundario (contraste ≥ 4,5:1) |
| `--verde` | `#17784A` | Verificado, garantía, éxito |
| `--rojo` | `#BF2B1F` | Errores y cancelaciones |

El naranja nunca es decoración: si no es una acción, una selección o la ruta, no va en naranja.

## Tipografía

- Una sola familia: **Rubik** (Google Fonts), igual que el logo. Sin conexión cae a la letra del sistema.
- Escala fija: 12 · 13 · 14 · 15 (texto) · 16 · 18 · 22 (títulos de pantalla) · 26 · 32 (tiempo de llegada).
- Títulos en 600 con −0,02 em; números de precios, horas y distancias con cifras tabulares (clase `num`).

## Forma y profundidad

- Botones y campos: botones de 56 px de alto y campos de 48 px, esquinas de 14 px. Una sola forma de botón en toda la app.
- Tarjetas y listas: esquinas de 16 px y **borde, sin sombra**. Lo elegible va en durazno (`--tarjeta`); la información (filas de resumen, cifras) va en blanco. La única sombra es la del aviso flotante.
- Títulos de pantalla en negrita (700), 28 px; el titular de Inicio y de la portada, 30–34 px.
- Chips de filtro: rectángulo redondeado de 14 px; las respuestas rápidas del chat siguen en píldora.
- Inicio de sesión y registro: logo centrado sobre el crema, sin bloque azul.

## Íconos

- Todos dibujados en SVG con trazo de 2 px. Nada de emojis ni caracteres (★, ✓, 🚨) haciendo de ícono.
- Íconos disponibles en `index.html`: atrás, flecha, teléfono, chat, estrella, verificado, check, escudo, alerta, ubicación, ojo.

## Selectores de fecha y hora

- Las dos opciones de «¿Cuándo?» son tarjetas con borde; la elegida lleva borde naranja y fondo naranja suave, igual que los chips.
- Día y hora usan la misma regla: opción libre = borde gris, elegida = naranja, no disponible = atenuada (los días sin atención) o tachada (horas ocupadas). Nunca se esconde una opción: se muestra apagada para que se entienda por qué no está.
- El interruptor de disponibilidad del técnico usa verde cuando está activo (estado, no acción).

## Barra inferior

- Tres destinos de primer nivel, siempre en el mismo orden: Mis pedidos · Inicio · Historial. Inicio va al centro dentro de un cuadro azul marino con el ícono naranja (como los íconos de oficio); si es la pestaña activa, se llena de naranja.
- La pestaña activa se marca con texto en azul marino y el ícono en naranja oscuro. Las pantallas de un flujo cuentan como parte de su pestaña (el seguimiento es de Mis pedidos; el pago y la garantía, de Historial).
- Se oculta donde se necesita la pantalla completa: entrada, chat y llamada.
- Estados de un pedido: Agendada (naranja suave), En camino y Completado (verde), Cancelado (rojo suave).

## Estados

Cada control tiene: normal, hover, foco visible (contorno naranja), presionado, deshabilitado y, donde aplica, cargando («Entrando…», «Creando cuenta…») y error (borde rojo y mensaje que dice qué falta).

## Movimiento

- Cambio de pantalla: desplazamiento corto de 10 px en 220 ms, con salida exponencial. El contenido nunca empieza invisible.
- Transiciones de botones: 150 ms.
- Si el teléfono tiene activado «reducir movimiento», todo se desactiva.

## Textos

- Los botones dicen lo que hacen: «Iniciar sesión», «Crear cuenta», «Confirmar», «Pagar y calificar».
- Los errores dicen qué falta y cómo arreglarlo: «Escribe tu correo o teléfono.»
- Todo lo simulado lo dice: «Prototipo con datos de ejemplo», «Llamada simulada».
