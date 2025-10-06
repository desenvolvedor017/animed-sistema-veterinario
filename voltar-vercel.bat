@echo off
echo ========================================
echo    VOLTAR PARA VERCEL - MAIS FACIL
echo ========================================
echo.

echo 🚀 Abrindo Vercel para deploy automatico...
start https://vercel.com/new

echo.
echo 📋 INSTRUCOES PARA DEPLOY NO VERCEL:
echo.
echo 1. No Vercel que abriu:
echo    - Clique em "Import Git Repository"
echo    - Cole a URL: https://github.com/desenvolvedor017/animed-sistema-veterinario
echo    - Clique em "Import"
echo.
echo 2. Configuracao do Projeto:
echo    - Framework Preset: Next.js (ja selecionado)
echo    - Root Directory: ./ (raiz)
echo    - Build Command: npm run build
echo    - Output Directory: .next
echo.
echo 3. Variaveis de Ambiente (clique em "Environment Variables"):
echo    NEXTAUTH_URL=https://seu-projeto.vercel.app
echo    NEXTAUTH_SECRET=chave-secreta-aleatoria-123
echo    DATABASE_URL=file:./dev.db
echo.
echo 4. Deploy:
echo    - Clique em "Deploy"
echo    - Aguarde 2-3 minutos
echo    - Sistema estara online!
echo.

echo 🎯 VANTAGENS DO VERCEL:
echo.
echo ✅ Otimizado para Next.js
echo ✅ Deploy automatico
echo ✅ SSL gratuito
echo ✅ CDN global
echo ✅ Configuracao automatica
echo ✅ Sem necessidade de configuracao manual
echo.

echo 📁 REPOSITORIO GITHUB:
echo.
echo ✅ Ja esta no GitHub: https://github.com/desenvolvedor017/animed-sistema-veterinario
echo ✅ Todos os arquivos estao la
echo ✅ Pronto para importar no Vercel
echo.

pause
