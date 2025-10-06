@echo off
echo ========================================
echo    SETUP AUTOMATICO - SISTEMA ANIMED
echo ========================================
echo.

REM Verificar se Node.js esta instalado
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js nao encontrado!
    echo 📥 Baixando e instalando Node.js automaticamente...
    echo.
    
    REM Baixar Node.js
    powershell -Command "& {Invoke-WebRequest -Uri 'https://nodejs.org/dist/v20.10.0/node-v20.10.0-x64.msi' -OutFile 'nodejs-installer.msi'}"
    
    echo 🔧 Instalando Node.js...
    msiexec /i nodejs-installer.msi /quiet /norestart
    
    echo ✅ Node.js instalado! Reinicie o terminal e execute novamente.
    pause
    exit /b 0
)

echo ✅ Node.js encontrado!

REM Verificar se Git esta instalado
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git nao encontrado!
    echo 📥 Baixando e instalando Git automaticamente...
    echo.
    
    REM Baixar Git
    powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe' -OutFile 'git-installer.exe'}"
    
    echo 🔧 Instalando Git...
    git-installer.exe /SILENT
    
    echo ✅ Git instalado! Reinicie o terminal e execute novamente.
    pause
    exit /b 0
)

echo ✅ Git encontrado!

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

echo.
echo 🚀 Iniciando processo automatico de envio ao GitHub...
echo.

REM Inicializar Git
if not exist ".git" (
    echo 🔧 Inicializando repositorio Git...
    git init
    echo ✅ Repositorio inicializado!
)

REM Adicionar arquivos
echo 📦 Adicionando arquivos...
git add .

REM Commit
echo 💾 Fazendo commit...
git commit -m "feat: Sistema Animed - Sistema veterinario completo"

REM Verificar se remote existe
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo 📋 CONFIGURACAO DO GITHUB NECESSARIA:
    echo.
    echo 1. Acesse: https://github.com
    echo 2. Clique em "New repository"
    echo 3. Nome: animed-sistema-veterinario
    echo 4. Clique em "Create repository"
    echo 5. Copie a URL do repositorio
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
    echo 🌐 Acesse seu repositorio no GitHub para ver o resultado!
) else (
    echo.
    echo ❌ Erro ao enviar. Verifique suas credenciais do GitHub.
    echo 💡 Solucoes:
    echo   1. Configure um token de acesso pessoal
    echo   2. Use GitHub Desktop
    echo   3. Execute: git push -u origin main
)

echo.
echo 📚 Consulte GUIA_GITHUB.md para mais informacoes.
pause
