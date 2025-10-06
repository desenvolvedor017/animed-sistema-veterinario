@echo off
echo ========================================
echo    DEPLOY AUTOMATICO - NETLIFY
echo ========================================
echo.

echo 🚀 Abrindo Netlify para deploy automatico...
start https://app.netlify.com/drop

echo.
echo 📋 INSTRUCOES PARA DEPLOY NO NETLIFY:
echo.
echo 1. No Netlify que abriu:
echo    - Arraste a pasta do projeto para a area de upload
echo    - Ou clique em "Browse to upload" e selecione a pasta
echo    - Aguarde o upload (pode levar alguns minutos)
echo.
echo 2. Apos o upload:
echo    - O Netlify fara o deploy automaticamente
echo    - Voce recebera uma URL como: https://random-name.netlify.app
echo    - Sistema estara online imediatamente!
echo.
echo 3. Configuracao opcional:
echo    - Clique em "Site settings"
echo    - Altere o nome do site se desejar
echo    - Configure dominio personalizado se necessario
echo.

echo 🎯 VANTAGENS DO NETLIFY:
echo.
echo ✅ Deploy automatico em segundos
echo ✅ URL publica imediatamente
echo ✅ SSL gratuito
echo ✅ CDN global
echo ✅ Sem necessidade de configuracao
echo ✅ Funciona com qualquer projeto
echo.

echo 📁 ARQUIVOS PARA UPLOAD:
echo.
echo ✅ Incluir: Todos os arquivos .ts, .tsx, .js, .json, .md
echo ✅ Incluir: Pasta app/, components/, lib/, prisma/
echo ✅ Incluir: package.json, README.md, .gitignore
echo ❌ Excluir: node_modules/, .env, prisma/dev.db
echo.

echo 🚀 DICA: Use Ctrl+A para selecionar todos os arquivos
echo    e arraste para o Netlify!
echo.

pause

