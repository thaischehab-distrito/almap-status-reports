#!/bin/bash
# Script chamado pelo Cowork após gerar o HTML atualizado
# Uso: ./scripts/push-update.sh "caminho/para/index.html"

set -e

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
HTML_FILE="${1:-$REPO_DIR/index.html}"
GH_USER="thaischehab-distrito"
REPO="almap-status-reports"
BRANCH="gh-pages"

echo "📂 Repositório: $REPO_DIR"
echo "📄 HTML: $HTML_FILE"

# Verifica se o arquivo existe
if [ ! -f "$HTML_FILE" ]; then
  echo "❌ Arquivo HTML não encontrado: $HTML_FILE"
  exit 1
fi

# Vai para o repo e muda para gh-pages
cd "$REPO_DIR"
git fetch origin
git checkout gh-pages

# Copia o HTML gerado
cp "$HTML_FILE" index.html

# Commit e push
DATAHORA=$(TZ="America/Sao_Paulo" date "+%d/%m/%Y %H:%M")
git add index.html

if git diff --staged --quiet; then
  echo "ℹ️ Nenhuma alteração detectada"
else
  git commit -m "chore: atualização via Cowork — $DATAHORA"
  git push origin gh-pages
  echo "✅ Site atualizado com sucesso!"
  echo "🌐 https://${GH_USER}.github.io/${REPO}"
fi

# Volta para main
git checkout main
