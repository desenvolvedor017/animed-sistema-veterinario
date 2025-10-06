# Script simples para enviar o Sistema Animed ao GitHub
Write-Host "Iniciando processo de envio ao GitHub..." -ForegroundColor Green

# Verificar se Git esta instalado
try {
    git --version | Out-Null
    Write-Host "Git encontrado!" -ForegroundColor Green
} catch {
    Write-Host "Git nao encontrado. Instale em: https://git-scm.com/download/win" -ForegroundColor Red
    Read-Host "Pressione Enter para sair"
    exit 1
}

# Verificar se estamos na pasta correta
if (-not (Test-Path "package.json")) {
    Write-Host "Execute este script na pasta raiz do projeto Animed" -ForegroundColor Red
    Read-Host "Pressione Enter para sair"
    exit 1
}

Write-Host "Pasta do projeto encontrada!" -ForegroundColor Green

# Inicializar Git se nao existir
if (-not (Test-Path ".git")) {
    Write-Host "Inicializando repositorio Git..." -ForegroundColor Yellow
    git init
    Write-Host "Repositorio Git inicializado!" -ForegroundColor Green
} else {
    Write-Host "Repositorio Git ja existe!" -ForegroundColor Green
}

# Verificar configuracao do Git
$userName = git config user.name
$userEmail = git config user.email

if (-not $userName -or -not $userEmail) {
    Write-Host "Configure o Git primeiro:" -ForegroundColor Yellow
    Write-Host "git config --global user.name 'Seu Nome'" -ForegroundColor Cyan
    Write-Host "git config --global user.email 'seu.email@exemplo.com'" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Depois execute este script novamente." -ForegroundColor Yellow
    Read-Host "Pressione Enter para sair"
    exit 1
}

Write-Host "Git configurado: $userName <$userEmail>" -ForegroundColor Green

# Adicionar arquivos
Write-Host "Adicionando arquivos ao Git..." -ForegroundColor Yellow
git add .

# Fazer commit
Write-Host "Fazendo commit das mudancas..." -ForegroundColor Yellow
git commit -m "feat: Sistema Animed - Sistema veterinario completo com conformidade LGPD"
Write-Host "Commit realizado!" -ForegroundColor Green

# Verificar se remote origin existe
$remoteOrigin = git remote get-url origin 2>$null
if ($remoteOrigin) {
    Write-Host "Remote origin configurado: $remoteOrigin" -ForegroundColor Green
} else {
    Write-Host "Remote origin nao configurado!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Para configurar o remote origin:" -ForegroundColor Cyan
    Write-Host "1. Crie um repositorio no GitHub" -ForegroundColor White
    Write-Host "2. Execute: git remote add origin https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git" -ForegroundColor White
    Write-Host "3. Execute: git push -u origin main" -ForegroundColor White
    Write-Host ""
    Write-Host "Ou execute este script novamente apos configurar o remote." -ForegroundColor Yellow
    Read-Host "Pressione Enter para sair"
    exit 0
}

# Enviar para GitHub
Write-Host "Enviando para o GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "Codigo enviado com sucesso para o GitHub!" -ForegroundColor Green
    Write-Host "Acesse seu repositorio no GitHub para ver o resultado!" -ForegroundColor Green
} catch {
    Write-Host "Erro ao enviar para o GitHub" -ForegroundColor Red
    Write-Host ""
    Write-Host "Possiveis solucoes:" -ForegroundColor Yellow
    Write-Host "1. Verifique se o repositorio existe no GitHub" -ForegroundColor White
    Write-Host "2. Verifique suas credenciais do GitHub" -ForegroundColor White
    Write-Host "3. Execute: git push -u origin main" -ForegroundColor White
}

Write-Host ""
Write-Host "Processo concluido!" -ForegroundColor Green
Write-Host "Consulte o arquivo GUIA_GITHUB.md para mais informacoes." -ForegroundColor Blue
Read-Host "Pressione Enter para sair"
