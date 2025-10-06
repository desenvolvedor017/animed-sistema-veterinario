@echo off
echo ========================================
echo    CORRIGIR VERCEL.JSON
echo ========================================
echo.

echo 🔧 ERRO CORRIGIDO:
echo.
echo ✅ Removido: propriedade 'builds' do vercel.json
echo ✅ Mantido: propriedade 'functions' 
echo ✅ Arquivo corrigido: vercel.json
echo.

echo 🚀 Abrindo GitHub para upload automatico...
start https://github.com/desenvolvedor017/animed-sistema-veterinario

echo.
echo 📋 INSTRUCOES PARA UPLOAD AUTOMATICO:
echo.
echo 1. No GitHub que abriu:
echo    - Clique em "uploading an existing file"
echo    - Arraste TODOS os arquivos da pasta atual
echo    - Commit message: "fix: Corrigir vercel.json - remover builds"
echo    - Clique em "Commit changes"
echo.

echo 🎯 ARQUIVOS PARA UPLOAD:
echo.
echo ✅ Incluir: Todos os arquivos .ts, .tsx, .js, .json, .md
echo ✅ Incluir: Pasta app/, components/, lib/, prisma/
echo ✅ Incluir: package.json, README.md, .gitignore, vercel.json
echo ❌ Excluir: node_modules/, .env, prisma/dev.db
echo.

echo 🚀 DICA: Use Ctrl+A para selecionar todos os arquivos
echo    e arraste para o GitHub!
echo.

echo 📱 APOS O UPLOAD:
echo.
echo 1. Volte para o Vercel
echo 2. Clique em "Implantar" novamente
echo 3. Agora deve funcionar sem erro!
echo.

echo 💡 DICA: O erro do vercel.json foi corrigido!
echo.

pause
