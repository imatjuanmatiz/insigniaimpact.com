# Insignia Impact Website

Sitio web oficial de Insignia Impact desplegado en GitHub Pages con Jekyll.

## 🚀 Deploy Rápido (10 minutos)

### Paso 1: Crear Repositorio en GitHub

1. Ve a [github.com](https://github.com) e inicia sesión (o crea cuenta gratis)
2. Click en el botón **"+"** arriba a la derecha → **"New repository"**
3. Nombra el repo: `insigniaimpact.com` (o el nombre que prefieras)
4. Marca como **"Public"**
5. Click **"Create repository"**

### Paso 2: Subir Archivos

**Opción A - Interfaz Web (Más Fácil):**

1. En tu nuevo repositorio, click **"uploading an existing file"**
2. Arrastra TODOS los archivos de esta carpeta al navegador
3. Scroll down, click **"Commit changes"**

**Opción B - Git (Más Pro):**

```bash
# En tu terminal, dentro de esta carpeta
git init
git add .
git commit -m "Initial commit - Insignia Impact website"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/insigniaimpact.com.git
git push -u origin main
```

### Paso 3: Activar GitHub Pages

1. En tu repositorio, ve a **"Settings"** (arriba)
2. En el menú izquierdo, click **"Pages"**
3. En **"Source"**, selecciona **"Deploy from a branch"**
4. En **"Branch"**, selecciona **"main"** y **"/ (root)"**
5. Click **"Save"**
6. **Espera 2-3 minutos** → Tu sitio estará en `https://TU-USUARIO.github.io/insigniaimpact.com`

### Paso 4: Conectar tu Dominio (insigniaimpact.com)

1. En GitHub Pages settings (Paso 3), hay una sección **"Custom domain"**
2. Escribe: `insigniaimpact.com`
3. Click **"Save"**
4. GitHub te mostrará los DNS records que necesitas

5. Ve a **GoDaddy**:
   - Inicia sesión → **"Mis Productos"** → **"DNS"**
   - Elimina los records A existentes
   - Agrega estos 4 records **A**:
     ```
     185.199.108.153
     185.199.109.153
     185.199.110.153
     185.199.111.153
     ```
   - Agrega un record **CNAME**:
     ```
     www → TU-USUARIO.github.io
     ```

6. **Espera 15-60 minutos** → Tu sitio estará en `insigniaimpact.com` ✅

---

## 📝 Cómo Agregar Blog Posts

### Opción 1: Desde GitHub (Sin código)

1. Ve a tu repositorio en GitHub
2. Navega a la carpeta `_posts`
3. Click **"Add file"** → **"Create new file"**
4. Nombra el archivo: `YYYY-MM-DD-titulo-del-post.md`
   - Ejemplo: `2026-02-15-como-optimizar-para-chatgpt.md`
5. Copia esta estructura:

```markdown
---
layout: post
title: "Tu Título Aquí"
date: 2026-02-15 10:00:00 -0500
categories: [aeo, tutoriales]
author: Juan Pablo
excerpt: "Resumen corto del post que aparecerá en previews"
---

# Tu Título

Aquí va tu contenido en Markdown...

## Subtítulo

- Lista de puntos
- Otro punto

**Texto en negrita** y *cursiva*

[Link a algo](https://ejemplo.com)
```

6. Click **"Commit changes"**
7. Espera 1-2 minutos → Tu post estará publicado

### Opción 2: Localmente

1. Crea un archivo `.md` en la carpeta `_posts`
2. Usa el mismo formato de arriba
3. Haz commit y push:
   ```bash
   git add _posts/tu-nuevo-post.md
   git commit -m "Nuevo post: Título"
   git push
   ```

---

## 🎨 Personalización

### Cambiar Colores

Edita las variables CSS en `index.html` (línea ~25):

```css
:root {
    --color-navy: #1e3a8a;    /* Azul principal */
    --color-teal: #14b8a6;    /* Verde/teal de Impact */
    --color-dark: #0f172a;    /* Fondo oscuro */
    --color-gray: #64748b;    /* Texto secundario */
}
```

### Cambiar Servicios o Precios

Edita `index.html` en la sección `<!-- Services Section -->` (línea ~500)

### Agregar Páginas Nuevas

Crea archivos `.html` o `.md` en la raíz:
- `sobre-nosotros.md`
- `casos-de-estudio.html`
- etc.

---

## 🤖 Optimización para IA (Lo que hace especial este sitio)

### 1. llms.txt
El archivo `llms.txt` le dice a las IA quién eres y qué haces.

**Para editarlo:**
- Abre `llms.txt`
- Actualiza con nueva info de servicios, casos de éxito, etc.
- Las IA lo leerán automáticamente

### 2. Markdown Autodiscovery
Tus posts en `_posts/*.md` son accesibles en formato Markdown puro.

**Ejemplo:**
- HTML: `insigniaimpact.com/blog/2026/01/27/la-tercera-audiencia/`
- Markdown: `insigniaimpact.com/blog/2026/01/27/la-tercera-audiencia.md` ← IA prefieren esto

### 3. Structured Data
El sitio ya incluye:
- Meta tags optimizados
- Schema.org básico
- Sitemap automático (Jekyll lo genera)

**Para agregar más:**
Edita el `<head>` de `index.html` o crea `_layouts/default.html`

---

## 📊 Analytics y Tracking

### Google Analytics (Recomendado)

1. Crea cuenta en [analytics.google.com](https://analytics.google.com)
2. Obtén tu tracking ID (ej: `G-XXXXXXXXXX`)
3. Agrega antes de `</head>` en `index.html`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🔧 Testing Local

Si quieres ver el sitio localmente antes de publicar:

```bash
# Instala Jekyll (solo primera vez)
gem install bundler jekyll

# Crea Gemfile
echo 'source "https://rubygems.org"
gem "github-pages", group: :jekyll_plugins' > Gemfile

# Instala dependencias
bundle install

# Corre el servidor local
bundle exec jekyll serve

# Abre: http://localhost:4000
```

---

## 📧 Configuración de Email

El formulario actualmente usa `mailto:` que abre el cliente de email del usuario.

**Para capturar leads automáticamente**, considera:

1. **Formspree** (gratis para 50 envíos/mes)
   - Crea cuenta en [formspree.io](https://formspree.io)
   - Reemplaza el JavaScript del formulario

2. **Netlify Forms** (si migras a Netlify)
   - Agrega `netlify` attribute al form
   - Los leads llegan a tu panel

3. **Google Forms** (gratis ilimitado)
   - Crea form en Google Forms
   - Usa script para enviar data

---

## 🎯 Checklist Post-Deploy

- [ ] Sitio cargando en `insigniaimpact.com`
- [ ] HTTPS activado (GitHub lo hace automático)
- [ ] Formulario de contacto funcionando
- [ ] Blog post de ejemplo visible
- [ ] llms.txt accesible en `/llms.txt`
- [ ] Analytics configurado
- [ ] Todas las secciones tienen contenido correcto
- [ ] Precios actualizados
- [ ] Email de contacto correcto (juan@insigniaimpact.com)

---

## 📚 Recursos

- [Documentación Jekyll](https://jekyllrb.com/docs/)
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Markdown Guide](https://www.markdownguide.org/)
- [Artículo "The Third Audience"](https://dri.es/the-third-audience)

---

## 🆘 Problemas Comunes

**"Mi sitio no aparece"**
- Verifica que GitHub Pages esté activado en Settings
- Revisa que el branch sea `main` y la carpeta sea `/ (root)`
- Espera 2-3 minutos después de cada cambio

**"Mi dominio custom no funciona"**
- Verifica DNS en GoDaddy (pueden tardar hasta 48h pero usualmente 1h)
- Asegúrate que escribiste el dominio sin `https://`
- Revisa que los 4 records A estén correctos

**"El blog post no aparece"**
- Verifica que el nombre del archivo sea `YYYY-MM-DD-titulo.md`
- Revisa que el front matter (entre ---) esté correcto
- Espera 1-2 minutos después del commit

**"El formulario no funciona"**
- El `mailto:` requiere que el usuario tenga cliente de email configurado
- Considera usar Formspree o Google Forms para mejor experiencia

---

## 📞 Contacto

**Founder:** Juan Pablo  
**Email:** juan@insigniaimpact.com  
**Website:** [insigniaimpact.com](https://insigniaimpact.com)

---

**¡Tu sitio está listo para capturar leads y demostrar expertise en optimización para IA! 🚀**
