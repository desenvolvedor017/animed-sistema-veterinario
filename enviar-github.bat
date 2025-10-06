@echo off
echo 🚀 Iniciando processo de envio ao GitHub...
echo.

REM Verificar se Git está instalado
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git não encontrado. Instale em: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo ✅ Git encontrado!

REM Verificar se estamos na pasta correta
if not exist "package.json" (
    echo ❌ Execute este script na pasta raiz do projeto Animed
    pause
    exit /b 1
)
echo ✅ Pasta do projeto encontrada!

REM Inicializar Git se não existir
if not exist ".git" (
    echo 🔧 Inicializando repositório Git...
    git init
    echo ✅ Repositório Git inicializado!
) else (
    echo ✅ Repositório Git já existe!
)

REM Verificar configuração do Git
for /f "tokens=*" %%i in ('git config user.name') do set USER_NAME=%%i
for /f "tokens=*" %%i in ('git config user.email') do set USER_EMAIL=%%i

if "%USER_NAME%"=="" (
    echo ⚠️  Configure o Git primeiro:
    echo git config --global user.name "Seu Nome"
    echo git config --global user.email "seu.email@exemplo.com"
    echo.
    echo Depois execute este script novamente.
    pause
    exit /b 1
)

echo ✅ Git configurado: %USER_NAME% ^<%USER_EMAIL%^>

REM Adicionar arquivos
echo 📦 Adicionando arquivos ao Git...
git add .

REM Verificar se há mudanças para commit
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo ℹ️  Nenhuma mudança para commitar.
) else (
    echo 💾 Fazendo commit das mudanças...
    git commit -m "feat: Sistema Animed - Sistema veterinário completo com conformidade LGPD"
    echo ✅ Commit realizado!
)

REM Verificar se remote origin existe
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  Remote origin não configurado!
    echo.
    echo 📋 Para configurar o remote origin:
    echo 1. Crie um repositório no GitHub
    echo 2. Execute: git remote add origin https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git
    echo 3. Execute: git push -u origin main
    echo.
    echo Ou execute este script novamente após configurar o remote.
    pause
    exit /b 0
)

REM Enviar para GitHub
echo 🚀 Enviando para o GitHub...
git push -u origin main
if %errorlevel% equ 0 (
    echo ✅ Código enviado com sucesso para o GitHub!
    echo 🌐 Acesse seu repositório no GitHub para ver o resultado!
) else (
    echo ❌ Erro ao enviar para o GitHub
    echo.
    echo 💡 Possíveis soluções:
    echo 1. Verifique se o repositório existe no GitHub
    echo 2. Verifique suas credenciais do GitHub
    echo 3. Execute: git push -u origin main
)

echo.
echo 🎉 Processo concluído!
echo 📚 Consulte o arquivo GUIA_GITHUB.md para mais informações.
pause

