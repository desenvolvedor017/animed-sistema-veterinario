@echo off
echo ========================================
echo    DEPLOY VERCEL - SISTEMA ANIMED
echo    (INSTRUCOES EM PORTUGUES)
echo ========================================
echo.

echo 🚀 Abrindo Vercel para deploy...
start https://vercel.com/new

echo.
echo 📋 INSTRUCOES PARA DEPLOY NO VERCEL (PORTUGUES):
echo.
echo 1. No Vercel que abriu:
echo    - Clique em "Adicionar Novo..." ou "Importar Projeto"
echo    - Selecione "Importar Repositório Git"
echo    - Escolha "animed-sistema-veterinario"
echo    - Clique em "Importar"
echo.
echo 2. Configuracao do Projeto:
echo    - Preset do Framework: Next.js (ja selecionado)
echo    - Diretorio Raiz: ./ (raiz)
echo    - Comando de Build: npm run build
echo    - Diretorio de Saida: .next
echo.
echo 3. Variaveis de Ambiente (clique em "Variaveis de Ambiente"):
echo    NEXTAUTH_URL=https://seu-projeto.vercel.app
echo    NEXTAUTH_SECRET=chave-secreta-aleatoria-123
echo    DATABASE_URL=file:./dev.db
echo.
echo 4. Deploy:
echo    - Clique em "Fazer Deploy" ou "Deploy"
echo    - Aguarde 2-3 minutos
echo    - Sistema estara online!
echo.

echo 🎯 CONFIGURACOES IMPORTANTES:
echo.
echo ✅ Framework: Next.js
echo ✅ Comando de Build: npm run build
echo ✅ Diretorio de Saida: .next
echo ✅ Versao do Node.js: 18.x
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

echo 🎉 BENEFICIOS DO VERCEL:
echo.
echo ✅ Deploy automatico a cada mudanca no GitHub
echo ✅ SSL gratuito e seguranca
echo ✅ CDN global para velocidade
echo ✅ Backup automatico
echo ✅ Monitoramento de performance
echo.

pause
