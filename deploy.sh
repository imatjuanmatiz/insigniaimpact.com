#!/bin/bash

# Insignia Impact - Script de Deploy Rápido para GitHub Pages
# Ejecuta este script para hacer deploy de cambios

echo "🚀 Insignia Impact - Deploy Script"
echo "=================================="
echo ""

# Verificar que estamos en un repo git
if [ ! -d .git ]; then
    echo "❌ Error: No estás en un repositorio git"
    echo "Primero ejecuta: git init"
    exit 1
fi

# Agregar todos los cambios
echo "📦 Agregando cambios..."
git add .

# Pedir mensaje de commit
echo ""
read -p "💬 Mensaje del commit (Enter para usar mensaje default): " commit_message

if [ -z "$commit_message" ]; then
    commit_message="Update website content"
fi

# Hacer commit
echo "✅ Haciendo commit: $commit_message"
git commit -m "$commit_message"

# Build site (Jekyll) and generate agent-native markdown
echo "🔧 Building site with Jekyll..."
jekyll build

echo "📄 Generating agent-native markdown files..."
./scripts/generate_md.sh

# Run CI check locally (optional)
echo "🔎 Running CI check for generated markdown..."
./scripts/ci_check_md.sh

# Push to GitHub
echo "🌐 Subiendo a GitHub..."
git push origin main

echo ""
echo "✨ ¡Deploy completado!"
echo "Tu sitio se actualizará en 1-2 minutos en:"
echo "https://insigniaimpact.com"
echo ""
