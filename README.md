# 📌 Post-it

Plugin para Claude que genera un resumen visual tipo nota adhesiva de la conversación en curso. Pensado para conversaciones largas donde se pierde de vista lo importante.

Escribe `/postit` y Claude relee todo lo hablado y devuelve una nota escaneable con 3-5 puntos clave: **decisiones tomadas**, **datos importantes** y **próximos pasos**. Si la conversación cubre varios temas, genera hasta 3 post-its, uno por tema.

## Instalación

### En Claude Code

```bash
# Añadir el marketplace
/plugin marketplace add hianadee/postit

# Instalar el plugin
/plugin install postit@anadee
```

### En Claude.ai

1. Clona el repo y ejecuta `./build.sh` (genera `dist/postit.plugin`), o descarga el `.plugin` desde Releases.
2. Sube el archivo en **Settings → Capabilities → Plugins**.

## Uso

En cualquier momento de la conversación:

```
/postit
```

También responde a peticiones naturales como *"resume la conversación en un post-it"* o *"dame el post-it"*.

### Qué devuelve

Una nota visual con cada punto etiquetado por tipo:

- **Decisión:** acuerdos cerrados, opciones elegidas, cosas descartadas
- **Dato:** cifras, fechas, nombres, URLs o parámetros que conviene no perder
- **Siguiente:** acciones pendientes, con responsable si se mencionó

Sin relleno: si la conversación es corta o no hay decisiones aún, resume el tema y el estado actual.

## Estructura

```
postit/
├── .claude-plugin/
│   ├── plugin.json        # Metadatos del plugin
│   └── marketplace.json   # Para instalación desde GitHub
├── skills/
│   └── postit/
│       └── SKILL.md       # Lógica del skill
├── build.sh               # Empaqueta el .plugin para Claude.ai
└── README.md
```

## Configuración

No requiere conectores, variables de entorno ni configuración adicional.

## Roadmap

- [ ] Modo incremental (`/postit delta`): resumir solo desde el último post-it
- [ ] Filtros por tipo: `/postit pendientes`, `/postit decisiones`, `/postit datos`
- [ ] Export/persistencia: copiar como texto, guardar en Notion

## Licencia

MIT — [Ana Dee](https://anadee.es)
