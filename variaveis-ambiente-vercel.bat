@echo off
echo ========================================
echo    VARIAVEIS DE AMBIENTE VERCEL
echo ========================================
echo.

echo 🔑 VARIAVEIS OBRIGATORIAS PARA O SISTEMA:
echo.

echo 1. NEXTAUTH_URL
echo    Valor: https://seu-projeto.vercel.app
echo    Descricao: URL base da aplicacao
echo.

echo 2. NEXTAUTH_SECRET
echo    Valor: qualquer-string-secreta-aqui
echo    Descricao: Chave secreta para autenticacao
echo.

echo 3. DATABASE_URL
echo    Valor: file:./dev.db
echo    Descricao: Caminho do banco de dados SQLite
echo.

echo 📋 COMO ADICIONAR NO VERCEL:
echo.
echo 1. No Vercel, clique em "Settings"
echo 2. Clique em "Environment Variables"
echo 3. Adicione cada variavel:
echo    - Nome: NEXTAUTH_URL
echo      Valor: https://animed-sistema-veterinario.vercel.app
echo    - Nome: NEXTAUTH_SECRET
echo      Valor: animed-secret-key-2024
echo    - Nome: DATABASE_URL
echo      Valor: file:./dev.db
echo 4. Clique em "Save"
echo 5. Clique em "Redeploy"
echo.

echo 🚨 IMPORTANTE: Sem essas variaveis o sistema nao funciona!
echo.

echo 🚀 Abrindo Vercel para configurar...
start https://vercel.com/dashboard

echo.
echo ========================================
echo    CONFIGURE AS VARIAVEIS AGORA!
echo ========================================

pause