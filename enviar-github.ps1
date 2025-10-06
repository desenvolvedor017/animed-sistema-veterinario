# Script para enviar o Sistema Animed ao GitHub
# Execute como administrador se necessário

Write-Host "🚀 Iniciando processo de envio ao GitHub..." -ForegroundColor Green

# Verificar se Git está instalado
try {
    $gitVersion = git --version
    Write-Host "✅ Git encontrado: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git não encontrado. Instale em: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# Verificar se estamos na pasta correta
if (-not (Test-Path "package.json")) {
    Write-Host "❌ Execute este script na pasta raiz do projeto Animed" -ForegroundColor Red
    exit 1
}

Write-Host "📁 Pasta do projeto encontrada!" -ForegroundColor Green

# Inicializar Git se não existir
if (-not (Test-Path ".git")) {
    Write-Host "🔧 Inicializando repositório Git..." -ForegroundColor Yellow
    git init
    Write-Host "✅ Repositório Git inicializado!" -ForegroundColor Green
} else {
    Write-Host "✅ Repositório Git já existe!" -ForegroundColor Green
}

# Verificar configuração do Git
$userName = git config user.name
$userEmail = git config user.email

if (-not $userName -or -not $userEmail) {
    Write-Host "⚠️  Configure o Git primeiro:" -ForegroundColor Yellow
    Write-Host "git config --global user.name 'Seu Nome'" -ForegroundColor Cyan
    Write-Host "git config --global user.email 'seu.email@exemplo.com'" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Depois execute este script novamente." -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Git configurado: $userName <$userEmail>" -ForegroundColor Green

# Adicionar arquivos
Write-Host "📦 Adicionando arquivos ao Git..." -ForegroundColor Yellow
git add .

# Verificar se há mudanças para commit
$status = git status --porcelain
if (-not $status) {
    Write-Host "ℹ️  Nenhuma mudança para commitar." -ForegroundColor Blue
} else {
    Write-Host "💾 Fazendo commit das mudanças..." -ForegroundColor Yellow
    git commit -m "feat: Sistema Animed - Sistema veterinário completo com conformidade LGPD"
    Write-Host "✅ Commit realizado!" -ForegroundColor Green
}

# Verificar se remote origin existe
$remoteOrigin = git remote get-url origin 2>$null
if ($remoteOrigin) {
    Write-Host "✅ Remote origin configurado: $remoteOrigin" -ForegroundColor Green
} else {
    Write-Host "⚠️  Remote origin não configurado!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "📋 Para configurar o remote origin:" -ForegroundColor Cyan
    Write-Host "1. Crie um repositório no GitHub" -ForegroundColor White
    Write-Host "2. Execute: git remote add origin https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git" -ForegroundColor White
    Write-Host "3. Execute: git push -u origin main" -ForegroundColor White
    Write-Host ""
    Write-Host "Ou execute este script novamente após configurar o remote." -ForegroundColor Yellow
    exit 0
}

# Enviar para GitHub
Write-Host "🚀 Enviando para o GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "✅ Código enviado com sucesso para o GitHub!" -ForegroundColor Green
    Write-Host "🌐 Acesse seu repositório no GitHub para ver o resultado!" -ForegroundColor Green
} catch {
    Write-Host "❌ Erro ao enviar para o GitHub:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host ""
    Write-Host "💡 Possíveis soluções:" -ForegroundColor Yellow
    Write-Host "1. Verifique se o repositório existe no GitHub" -ForegroundColor White
    Write-Host "2. Verifique suas credenciais do GitHub" -ForegroundColor White
    Write-Host "3. Execute: git push -u origin main" -ForegroundColor White
}

Write-Host ""
Write-Host "🎉 Processo concluído!" -ForegroundColor Green
Write-Host "📚 Consulte o arquivo GUIA_GITHUB.md para mais informações." -ForegroundColor Blue
