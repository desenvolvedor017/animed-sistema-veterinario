@echo off
echo ========================================
echo    DEPLOY AUTOMATICO - GITHUB PAGES
echo ========================================
echo.

echo 🚀 Fazendo deploy automatico no GitHub Pages...
echo.

REM Verificar se Git esta instalado
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git nao encontrado. Instale em: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✅ Git encontrado!

REM Verificar se estamos na pasta correta
if -not (Test-Path "package.json") (
    echo ❌ Execute este script na pasta raiz do projeto Animed
    pause
    exit /b 1
)

echo ✅ Pasta do projeto encontrada!

REM Configurar Git se necessario
for /f "tokens=*" %%i in ('git config user.name') do set USER_NAME=%%i
if "%USER_NAME%"=="" (
    echo 🔧 Configurando Git...
    set /p USER_NAME="Digite seu nome: "
    set /p USER_EMAIL="Digite seu email: "
    git config --global user.name "%USER_NAME%"
    git config --global user.email "%USER_EMAIL%"
    echo ✅ Git configurado!
)

REM Inicializar Git se nao existir
if not exist ".git" (
    echo 🔧 Inicializando repositorio Git...
    git init
    echo ✅ Repositorio Git inicializado!
)

REM Adicionar arquivos
echo 📦 Adicionando arquivos ao Git...
git add .

REM Fazer commit
echo 💾 Fazendo commit das mudancas...
git commit -m "feat: Sistema Animed - Deploy automatico"

REM Verificar se remote origin existe
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo 📋 CONFIGURACAO DO GITHUB NECESSARIA:
    echo.
    echo 1. Acesse: https://github.com/desenvolvedor017/animed-sistema-veterinario
    echo 2. Clique em "Settings" (Configuracoes)
    echo 3. Clique em "Pages" no menu lateral
    echo 4. Em "Source", selecione "Deploy from a branch"
    echo 5. Selecione "main" branch
    echo 6. Clique em "Save"
    echo.
    set /p REPO_URL="Cole a URL do repositorio aqui: "
    git remote add origin %REPO_URL%
    echo ✅ Remote configurado!
)

REM Enviar para GitHub
echo 🚀 Enviando para o GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo 🎉 SUCESSO! Sistema enviado para o GitHub!
    echo 🌐 Acesse: https://desenvolvedor017.github.io/animed-sistema-veterinario
    echo.
    echo 📋 PROXIMOS PASSOS:
    echo 1. Acesse: https://github.com/desenvolvedor017/animed-sistema-veterinario/settings/pages
    echo 2. Em "Source", selecione "Deploy from a branch"
    echo 3. Selecione "main" branch
    echo 4. Clique em "Save"
    echo 5. Aguarde 5-10 minutos
    echo 6. Sistema estara online em: https://desenvolvedor017.github.io/animed-sistema-veterinario
) else (
    echo.
    echo ❌ Erro ao enviar para o GitHub
    echo 💡 Solucoes:
    echo   1. Verifique se o repositorio existe no GitHub
    echo   2. Verifique suas credenciais do GitHub
    echo   3. Execute: git push -u origin main
)

echo.
echo 📚 Consulte GUIA_GITHUB.md para mais informacoes.
pause

