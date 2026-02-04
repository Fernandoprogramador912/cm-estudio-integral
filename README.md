# Estudio Contable - Sitio Web

Sitio web profesional para estudio contable especializado en recupero de cr├®ditos fiscales y beneficios promocionales.

## Caracter├¡sticas

- Dise├▒o responsive y moderno
- Secciones: Inicio, Servicios, Contacto
- Servicios organizados en categor├¡as:
  - Recuperos Impositivos
  - Recuperos Comercio Exterior
  - Beneficios Promocionales

## Instalaci├│n y Uso Local

### Opci├│n 1: NPM Scripts (Recomendado)

```bash
npm run dev
```

O simplemente:

```bash
npm start
```

Luego abre tu navegador en: `http://localhost:8000`

### Opci├│n 2: Servidor HTTP de Python

```bash
python -m http.server 8000
```

## Despliegue en Vercel

### Pasos para publicar:

1. **Crear cuenta en GitHub:**
   - Ve a https://github.com y crea una cuenta
   - Crea un nuevo repositorio (puedes llamarlo "estudio-contable" o similar)

2. **Subir el c├│digo a GitHub:**
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
   - Inicia sesi├│n con tu cuenta de GitHub
   - Click en "New Project"
   - Importa tu repositorio
   - Vercel detectar├í autom├íticamente que es un sitio est├ítico

4. **Configurar dominio personalizado:**
   - En el dashboard de Vercel, ve a tu proyecto
   - Settings ÔåÆ Domains
   - Agrega tu dominio personalizado
   - Sigue las instrucciones para configurar los DNS

## Estructura del Proyecto

```
.
Ôö£ÔöÇÔöÇ index.html      # P├ígina principal
Ôö£ÔöÇÔöÇ styles.css      # Estilos
Ôö£ÔöÇÔöÇ script.js       # JavaScript
Ôö£ÔöÇÔöÇ package.json    # Configuraci├│n del proyecto
ÔööÔöÇÔöÇ README.md       # Documentaci├│n
```

## Informaci├│n de Contacto

- **Direcci├│n**: Calle 142 N┬░ 1554 - Berazategui
- **Tel├®fono**: 11-5625-2417

## Notas

- Las im├ígenes se cargan desde Unsplash (repositorio de im├ígenes gratuitas)
- El sitio est├í optimizado para funcionar completamente offline si se descargan las im├ígenes
- Dise├▒o inspirado en sitios profesionales de consultor├¡a tributaria

