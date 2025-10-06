@echo off
echo ========================================
echo    DEPLOY AUTOMATICO - VERCEL
echo ========================================
echo.

echo 🚀 Configurando deploy automatico no Vercel...
echo.

REM Verificar se Node.js esta instalado
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js nao encontrado! Instale primeiro.
    pause
    exit /b 1
)

echo ✅ Node.js encontrado!

REM Instalar Vercel CLI
echo 📦 Instalando Vercel CLI...
npm install -g vercel

echo.
echo 🔧 Configurando Vercel...
vercel login

echo.
echo 🚀 Fazendo deploy...
vercel --prod

echo.
echo 🎉 DEPLOY CONCLUIDO!
echo.
echo 📋 PROXIMOS PASSOS:
echo 1. Acesse: https://vercel.com/dashboard
echo 2. Configure as variaveis de ambiente:
echo    - NEXTAUTH_URL=https://seu-dominio.vercel.app
echo    - NEXTAUTH_SECRET=sua-chave-secreta
echo    - DATABASE_URL=sua-url-do-banco
echo 3. Seu sistema estara online!
echo.

pause
