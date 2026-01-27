# 🚀 INICIO RÁPIDO - 10 MINUTOS

> Tu sitio web profesional con blog optimizado para IA, listo en 10 minutos.

---

## ✅ PASO 1: Crea tu cuenta en GitHub (2 minutos)

1. Ve a **https://github.com**
2. Click **"Sign up"** (si no tienes cuenta)
3. Usa tu email profesional (ej: juan@insigniaimpact.com)

---

## ✅ PASO 2: Crea el repositorio (1 minuto)

1. Click el botón **"+"** arriba a la derecha
2. Click **"New repository"**
3. Nombra el repo: **`insigniaimpact.com`**
4. Selecciona **"Public"**
5. **NO** marques "Initialize with README"
6. Click **"Create repository"**

---

## ✅ PASO 3: Sube los archivos (2 minutos)

**Método Fácil (sin terminal):**

1. En la página del nuevo repo, click **"uploading an existing file"**
2. Abre la carpeta `insignia-impact-website` en tu computadora
3. **Selecciona TODOS los archivos** (Cmd+A en Mac, Ctrl+A en Windows)
4. **Arrastra** todos los archivos a la ventana del navegador
5. Scroll down, click **"Commit changes"**

**IMPORTANTE:** Asegúrate de subir:
- ✅ index.html
- ✅ _config.yml
- ✅ llms.txt
- ✅ robots.txt
- ✅ CNAME
- ✅ Carpeta `_posts` (con el blog post)
- ✅ Carpeta `_layouts`
- ✅ README.md

---

## ✅ PASO 4: Activa GitHub Pages (2 minutos)

1. En tu repositorio, click **"Settings"** (menú superior)
2. En el menú izquierdo, busca y click **"Pages"**
3. En **"Source"**, selecciona:
   - Branch: **`main`**
   - Folder: **`/ (root)`**
4. Click **"Save"**
5. **Espera 2-3 minutos** ⏱️

🎉 **Tu sitio estará en:** `https://TU-USUARIO.github.io/insigniaimpact.com`

---

## ✅ PASO 5: Conecta tu dominio (3 minutos)

### En GitHub:

1. Todavía en **Settings → Pages**
2. En **"Custom domain"**, escribe: `insigniaimpact.com`
3. Click **"Save"**
4. Marca **"Enforce HTTPS"** (después de 5 minutos)

### En GoDaddy:

1. Inicia sesión en **godaddy.com**
2. Ve a **"Mis Productos"** → Click en tu dominio
3. Click **"DNS"** (o "Administrar DNS")
4. **Elimina** los records A existentes
5. **Agrega 4 records tipo A:**

   | Tipo | Nombre | Valor |
   |------|---------|--------|
   | A | @ | 185.199.108.153 |
   | A | @ | 185.199.109.153 |
   | A | @ | 185.199.110.153 |
   | A | @ | 185.199.111.153 |

6. **Agrega 1 record tipo CNAME:**

   | Tipo | Nombre | Valor |
   |------|---------|--------|
   | CNAME | www | TU-USUARIO.github.io |

   *(Reemplaza TU-USUARIO con tu username de GitHub)*

7. Click **"Guardar"**

⏱️ **Espera 15-60 minutos** para que los DNS se propaguen.

---

## 🎉 ¡LISTO!

Tu sitio estará funcionando en:
- ✅ **https://insigniaimpact.com**
- ✅ **https://www.insigniaimpact.com**

---

## 📝 Próximos Pasos

### Verifica que todo funcione:

- [ ] Página principal carga correctamente
- [ ] Formulario de contacto funciona
- [ ] Blog post es accesible
- [ ] HTTPS está activado (candado verde en navegador)
- [ ] llms.txt es accesible en `/llms.txt`

### Personaliza tu sitio:

1. **Agrega más blog posts:**
   - En GitHub, ve a `_posts` → "Add file" → "Create new file"
   - Nombra: `2026-02-15-titulo-del-post.md`
   - Copia la estructura del post de ejemplo

2. **Actualiza precios o servicios:**
   - Edita `index.html` en GitHub
   - Busca la sección "Services"
   - Click "Commit changes"

3. **Configura Analytics:**
   - Lee la sección "Analytics" en README.md

---

## 🆘 ¿Problemas?

**"Mi sitio no carga"**
- Espera 5 minutos más
- Verifica Settings → Pages esté en "main" branch
- Recarga la página con Ctrl+Shift+R

**"Mi dominio no funciona"**
- DNS puede tardar hasta 48 horas (usualmente 1 hora)
- Verifica que los 4 records A estén correctos en GoDaddy
- Verifica el CNAME apunte a TU-USUARIO.github.io

**"El blog post no aparece"**
- Verifica que el archivo esté en `_posts`
- Verifica que el nombre sea `YYYY-MM-DD-titulo.md`
- Espera 2 minutos después del commit

---

## 📚 Documentación Completa

Lee **README.md** para:
- Cómo agregar blog posts
- Personalización avanzada
- Optimización para IA
- Configuración de analytics
- Y mucho más

---

## 🎯 Lo que acabas de lograr:

✅ Sitio web profesional en tu propio dominio  
✅ Blog con sistema de publicación en Markdown  
✅ Optimizado para IA (llms.txt, markdown autodiscovery)  
✅ HTTPS automático (SSL gratis)  
✅ Hosting gratis ilimitado  
✅ Sistema de captura de leads  
✅ Listo para escalar con más contenido  

**¡Ahora puedes empezar a capturar leads! 🚀**

---

**Contacto:** juan@insigniaimpact.com  
**Website:** insigniaimpact.com
