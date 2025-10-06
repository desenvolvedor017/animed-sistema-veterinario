@echo off
echo ========================================
echo    DELETAR E ATUALIZAR GITHUB
echo ========================================
echo.

echo 🚀 Abrindo GitHub para deletar arquivos antigos...
start https://github.com/desenvolvedor017/animed-sistema-veterinario

echo.
echo 📋 INSTRUCOES PARA DELETAR E ATUALIZAR:
echo.
echo 1. No GitHub que abriu:
echo    - Clique em "Delete this repository" (Deletar este repositorio)
echo    - Ou clique em "Settings" > "Danger Zone" > "Delete this repository"
echo    - Confirme a exclusao
echo.
echo 2. Criar novo repositorio:
echo    - Clique em "New repository"
echo    - Nome: animed-sistema-veterinario
echo    - Description: Sistema veterinario completo com LGPD
echo    - Marque "Public" ou "Private"
echo    - NAO marque "Add a README file"
echo    - Clique em "Create repository"
echo.
echo 3. Upload dos arquivos corrigidos:
echo    - Clique em "uploading an existing file"
echo    - Arraste TODOS os arquivos da pasta atual
echo    - Commit message: "feat: Sistema Animed completo - versao corrigida"
echo    - Clique em "Commit changes"
echo.

echo 🔧 ARQUIVOS CORRIGIDOS PARA UPLOAD:
echo.
echo ✅ vercel.json - Corrigido (removido builds)
echo ✅ app/api/appointments/route.ts - Corrigido client.email
echo ✅ app/api/exams/route.ts - Corrigido client.email
echo ✅ app/api/clients/route.ts - Corrigido client.email
echo ✅ app/api/clients/[id]/export/route.ts - Corrigido client.email
echo ✅ app/api/hospitalizations/route.ts - Corrigido client.email
echo ✅ app/api/clients/[id]/anonymize/route.ts - Corrigido anonymizedAt
echo ✅ app/api/dashboard/stats/route.ts - Corrigido apt.pet.name
echo ✅ app/api/treatments/[id]/route.ts - Corrigido pet.name
echo ✅ app/api/medical-records/[id]/route.ts - Corrigido pet.name
echo ✅ app/api/hospitalizations/[id]/procedures/route.ts - Corrigido pet.name
echo ✅ app/api/hospitalizations/[id]/route.ts - Corrigido pet.name
echo ✅ app/api/exams/[id]/route.ts - Corrigido pet.name
echo.

echo 🎯 ARQUIVOS PARA UPLOAD:
echo.
echo ✅ Incluir: Todos os arquivos .ts, .tsx, .js, .json, .md
echo ✅ Incluir: Pasta app/, components/, lib/, prisma/
echo ✅ Incluir: package.json, README.md, .gitignore, vercel.json
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

echo 💡 DICA: Agora todos os erros foram corrigidos!
echo.

pause
