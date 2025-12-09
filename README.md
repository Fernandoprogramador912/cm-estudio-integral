# Estudio Contable - Sitio Web

Sitio web profesional para estudio contable especializado en recupero de créditos fiscales y beneficios promocionales.

## Características

- Diseño responsive y moderno
- Secciones: Inicio, Servicios, Contacto
- Servicios organizados en categorías:
  - Recuperos Impositivos
  - Recuperos Comercio Exterior
  - Beneficios Promocionales

## Instalación y Uso Local

### Opción 1: NPM Scripts (Recomendado)

```bash
npm run dev
```

O simplemente:

```bash
npm start
```

Luego abre tu navegador en: `http://localhost:8000`

### Opción 2: Servidor HTTP de Python

```bash
python -m http.server 8000
```

## Despliegue en Vercel

### Pasos para publicar:

1. **Crear cuenta en GitHub:**
   - Ve a https://github.com y crea una cuenta
   - Crea un nuevo repositorio (puedes llamarlo "estudio-contable" o similar)

2. **Subir el código a GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/TU_USUARIO/TU_REPOSITORIO.git
   git push -u origin main
   ```

3. **Conectar con Vercel:**
   - Ve a https://vercel.com
   - Inicia sesión con tu cuenta de GitHub
   - Click en "New Project"
   - Importa tu repositorio
   - Vercel detectará automáticamente que es un sitio estático

4. **Configurar dominio personalizado:**
   - En el dashboard de Vercel, ve a tu proyecto
   - Settings → Domains
   - Agrega tu dominio personalizado
   - Sigue las instrucciones para configurar los DNS

## Estructura del Proyecto

```
.
├── index.html      # Página principal
├── styles.css      # Estilos
├── script.js       # JavaScript
├── package.json    # Configuración del proyecto
└── README.md       # Documentación
```

## Información de Contacto

- **Dirección**: Calle 142 N° 1554 - Berazategui
- **Teléfono**: 11-5625-2417

## Notas

- Las imágenes se cargan desde Unsplash (repositorio de imágenes gratuitas)
- El sitio está optimizado para funcionar completamente offline si se descargan las imágenes
- Diseño inspirado en sitios profesionales de consultoría tributaria

