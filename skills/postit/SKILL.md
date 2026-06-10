---
name: postit
description: >
  This skill should be used when the user types "/postit", "postit", or asks
  to "resume la conversación en un post-it", "dame el post-it", "haz un post-it
  con lo importante", or wants a visual sticky-note summary of the key points
  of the conversation so far.
metadata:
  version: "0.1.0"
  author: "Ana Dee"
---

# Post-it: resumen visual de la conversación

Generar inmediatamente un post-it visual que resuma lo esencial de la conversación hasta este momento. No pedir confirmación ni hacer preguntas: el comando es la orden.

## Qué incluir

Releer la conversación completa y extraer entre 3 y 5 puntos, priorizando en este orden:

1. **Decisiones tomadas** — acuerdos cerrados, opciones elegidas, cosas descartadas.
2. **Datos importantes** — cifras, fechas, nombres, URLs o parámetros que conviene no perder.
3. **Próximos pasos** — acciones pendientes, con responsable si se mencionó.

Reglas de contenido:

- Cada punto en una sola línea, máximo ~15 palabras. Escaneable, no prosa.
- Etiquetar cada punto con su tipo en negrita: **Decisión:**, **Dato:**, **Siguiente:**.
- Si la conversación es corta o no hay decisiones aún, resumir el tema y el estado actual sin inventar puntos de relleno.
- Si hay varios temas independientes en la conversación, generar un post-it por tema (máximo 3 post-its).
- Escribir en el idioma de la conversación.

## Cómo renderizarlo

Renderizar como nota adhesiva visual, no como texto plano:

- Si hay herramienta de widgets/visualización inline disponible, usarla.
- Si no, crear un artifact HTML.

Estilo de la nota (neutro, limpio):

- Fondo amarillo/ámbar suave (p. ej. `#FAEEDA`), borde sutil del mismo tono más oscuro, ligera rotación (-1°) para efecto post-it.
- Texto oscuro de la misma gama (p. ej. `#412402`), 14px, interlineado generoso.
- Cabecera pequeña con un icono de pin y la etiqueta "/postit · resumen".
- Sin gradientes, sombras ni decoración extra. Máxima legibilidad.
- Ancho máximo ~420px, centrado sobre una superficie de fondo discreta.

## Después del post-it

Tras renderizar, no repetir el contenido en texto. Añadir como mucho una línea de cierre (p. ej. ofrecer ampliar algún punto). Nada más.
