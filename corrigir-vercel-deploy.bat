@echo off
echo ========================================
echo    CORRIGIR DEPLOY VERCEL
echo ========================================
echo.

echo 🔧 Corrigindo configuracoes para Vercel...
echo.

echo 📋 CORRECOES APLICADAS:
echo.
echo ✅ next.config.js - Adicionado experimental.appDir: true
echo ✅ vercel.json - Configurado para Next.js App Router
echo ✅ Framework: nextjs
echo ✅ Build Command: npm run build
echo ✅ Output Directory: .next
echo.

echo 🚀 Abrindo GitHub para atualizar...
start https://github.com/desenvolvedor017/animed-sistema-veterinario

echo.
echo 📋 INSTRUCOES PARA ATUALIZAR:
echo.
echo 1. No GitHub que abriu:
echo    - Clique em "Add file" > "Upload files"
echo    - Arraste os arquivos corrigidos:
echo      * next.config.js (corrigido)
echo      * vercel.json (novo)
echo    - Commit message: "fix: Corrigir configuracoes Vercel para App Router"
echo    - Clique em "Commit changes"
echo.

echo 2. Volte para o Vercel:
echo    - Clique em "Redeploy" ou "Deploy"
echo    - O deploy deve funcionar agora!
echo.

echo 💡 DICA: As configuracoes agora estao corretas para Next.js 14 App Router!
echo.

pause
