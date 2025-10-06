@echo off
echo ========================================
echo    UPLOAD MANUAL - SISTEMA ANIMED
echo ========================================
echo.

echo 🚀 Abrindo GitHub para upload manual...
echo.

REM Abrir GitHub no navegador
start https://github.com/new

echo.
echo 📋 INSTRUCOES PARA UPLOAD MANUAL:
echo.
echo 1. No GitHub que abriu:
echo    - Repository name: animed-sistema-veterinario
echo    - Description: Sistema veterinario completo com LGPD
echo    - Marque "Public" ou "Private"
echo    - NAO marque "Add a README file"
echo    - Clique em "Create repository"
echo.
echo 2. Na proxima tela:
echo    - Clique em "uploading an existing file"
echo    - Arraste TODOS os arquivos da pasta (exceto node_modules)
echo    - Commit message: "feat: Sistema Animed completo"
echo    - Clique em "Commit changes"
echo.
echo 3. Pronto! Seu sistema estara no GitHub!
echo.

echo 📁 ARQUIVOS PARA UPLOAD:
echo ✅ Incluir: Todos os arquivos .ts, .tsx, .js, .json, .md
echo ✅ Incluir: Pasta app/, components/, lib/, prisma/
echo ✅ Incluir: package.json, README.md, .gitignore
echo ❌ Excluir: node_modules/, .env, prisma/dev.db
echo.

echo 🎯 ARQUIVOS IMPORTANTES:
dir /b *.md
dir /b *.json
dir /b *.js
dir /b *.ts

echo.
echo ⚡ DICA: Use Ctrl+A para selecionar todos os arquivos
echo    e arraste para o GitHub!
echo.

pause
