@echo off
echo ========================================
echo    SELECIONAR ARQUIVOS PARA GITHUB
echo ========================================
echo.

echo 📁 Abrindo pasta do projeto...
explorer .

echo.
echo 📋 INSTRUCOES PARA UPLOAD:
echo.
echo 1. No GitHub (que ja esta aberto):
echo    - Clique em "uploading an existing file"
echo.
echo 2. Na pasta que abriu:
echo    - Selecione TODOS os arquivos (Ctrl+A)
echo    - EXCETO a pasta "node_modules"
echo    - Arraste para o GitHub
echo.
echo 3. No GitHub:
echo    - Commit message: "feat: Sistema Animed completo"
echo    - Clique em "Commit changes"
echo.

echo 🎯 ARQUIVOS IMPORTANTES (certifique-se de incluir):
echo.
echo ✅ Documentacao:
dir /b *.md

echo.
echo ✅ Configuracao:
dir /b *.json
dir /b *.js
dir /b *.ts

echo.
echo ✅ Pastas principais:
echo    - app/ (paginas)
echo    - components/ (componentes)
echo    - lib/ (utilitarios)
echo    - prisma/ (banco de dados)
echo    - public/ (arquivos publicos)
echo    - types/ (tipos TypeScript)
echo.

echo ❌ EXCLUIR:
echo    - node_modules/ (dependencias)
echo    - .env (variaveis sensiveis)
echo    - prisma/dev.db (banco local)
echo.

echo 🚀 DICA: Use Ctrl+A para selecionar tudo,
echo    depois Ctrl+Click na pasta node_modules para desmarcar
echo.

pause

