@echo off
echo ========================================
echo    DEPLOY VERCEL - SISTEMA ANIMED
echo ========================================
echo.

echo 🚀 Abrindo Vercel para deploy...
start https://vercel.com/new

echo.
echo 📋 INSTRUCOES PARA DEPLOY NO VERCEL:
echo.
echo 1. No Vercel que abriu:
echo    - Clique em "Add New..." ou "Import Project"
echo    - Selecione "Import Git Repository"
echo    - Escolha "animed-sistema-veterinario"
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
echo    NEXTAUTH_SECRET=sua-chave-secreta-aqui
echo    DATABASE_URL=file:./dev.db
echo.
echo 4. Deploy:
echo    - Clique em "Deploy"
echo    - Aguarde 2-3 minutos
echo    - Sistema estara online!
echo.

echo 🎯 CONFIGURACOES IMPORTANTES:
echo.
echo ✅ Framework: Next.js
echo ✅ Build Command: npm run build
echo ✅ Output Directory: .next
echo ✅ Node.js Version: 18.x
echo.

echo 🔧 VARIAVEIS DE AMBIENTE NECESSARIAS:
echo.
echo NEXTAUTH_URL=https://seu-dominio.vercel.app
echo NEXTAUTH_SECRET=chave-secreta-aleatoria
echo DATABASE_URL=file:./dev.db
echo.

echo 🚀 APOS O DEPLOY:
echo.
echo 1. Sistema estara online em: https://seu-projeto.vercel.app
echo 2. Acesse com: admin@animed.com / admin123
echo 3. Compartilhe o link com outros usuarios
echo 4. Sistema funcionara em qualquer dispositivo
echo.

echo 📱 COMPATIBILIDADE:
echo.
echo ✅ Desktop (Windows, Mac, Linux)
echo ✅ Mobile (Android, iOS)
echo ✅ Tablet
echo ✅ Qualquer navegador
echo.

pause

