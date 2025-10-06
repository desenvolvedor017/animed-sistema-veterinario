@echo off
echo ========================================
echo    ATUALIZAR GITHUB AUTOMATICO
echo ========================================
echo.

echo 🚀 Abrindo GitHub para upload automatico...
start https://github.com/desenvolvedor017/animed-sistema-veterinario

echo.
echo 📋 INSTRUCOES PARA UPLOAD AUTOMATICO:
echo.
echo 1. No GitHub que abriu:
echo    - Clique em "uploading an existing file"
echo    - Arraste TODOS os arquivos da pasta atual
echo    - Commit message: "fix: Corrigir erros TypeScript para deploy"
echo    - Clique em "Commit changes"
echo.

echo 🔧 ARQUIVOS CORRIGIDOS:
echo.
echo ✅ app/api/appointments/route.ts - Corrigido client.email
echo ✅ app/api/exams/route.ts - Corrigido client.email
echo ✅ app/api/clients/route.ts - Corrigido client.email
echo ✅ app/api/clients/[id]/export/route.ts - Corrigido client.email
echo ✅ app/api/hospitalizations/route.ts - Corrigido client.email
echo.

echo 🎯 ARQUIVOS PARA UPLOAD:
echo.
echo ✅ Incluir: Todos os arquivos .ts, .tsx, .js, .json, .md
echo ✅ Incluir: Pasta app/, components/, lib/, prisma/
echo ✅ Incluir: package.json, README.md, .gitignore
echo ❌ Excluir: node_modules/, .env, prisma/dev.db
echo.

echo 🚀 DICA: Use Ctrl+A para selecionar todos os arquivos
echo    e arraste para o GitHub!
echo.

echo 📱 APOS O UPLOAD:
echo.
echo 1. Volte para o Vercel
echo 2. Clique em "Import Git Repository"
echo 3. Cole: https://github.com/desenvolvedor017/animed-sistema-veterinario
echo 4. Clique em "Import"
echo 5. Configure variaveis de ambiente
echo 6. Clique em "Deploy"
echo.

echo 💡 DICA: Agora o build deve funcionar sem erros TypeScript!
echo.

pause

