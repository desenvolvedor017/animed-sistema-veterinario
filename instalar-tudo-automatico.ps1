# Script para instalar tudo automaticamente e enviar ao GitHub
# Execute como administrador

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    INSTALACAO AUTOMATICA - ANIMED" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Funcao para baixar e instalar
function Install-Software {
    param(
        [string]$Name,
        [string]$DownloadUrl,
        [string]$InstallerPath,
        [string]$InstallArgs = "/SILENT"
    )
    
    Write-Host "📥 Baixando $Name..." -ForegroundColor Yellow
    try {
        Invoke-WebRequest -Uri $DownloadUrl -OutFile $InstallerPath -UseBasicParsing
        Write-Host "✅ Download concluido!" -ForegroundColor Green
        
        Write-Host "🔧 Instalando $Name..." -ForegroundColor Yellow
        Start-Process -FilePath $InstallerPath -ArgumentList $InstallArgs -Wait
        Write-Host "✅ $Name instalado com sucesso!" -ForegroundColor Green
        
        # Limpar arquivo temporario
        Remove-Item $InstallerPath -Force -ErrorAction SilentlyContinue
    } catch {
        Write-Host "❌ Erro ao instalar $Name`: $($_.Exception.Message)" -ForegroundColor Red
        return $false
    }
    return $true
}

# Verificar se Node.js esta instalado
Write-Host "🔍 Verificando Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js encontrado: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js nao encontrado. Instalando automaticamente..." -ForegroundColor Red
    
    $nodeInstalled = Install-Software -Name "Node.js" -DownloadUrl "https://nodejs.org/dist/v20.10.0/node-v20.10.0-x64.msi" -InstallerPath "nodejs-installer.msi" -InstallArgs "/quiet /norestart"
    
    if (-not $nodeInstalled) {
        Write-Host "❌ Falha ao instalar Node.js. Instale manualmente: https://nodejs.org" -ForegroundColor Red
        Read-Host "Pressione Enter para continuar"
        exit 1
    }
    
    Write-Host "⚠️  Reinicie o terminal e execute novamente para continuar." -ForegroundColor Yellow
    Read-Host "Pressione Enter para sair"
    exit 0
}

# Verificar se Git esta instalado
Write-Host "🔍 Verificando Git..." -ForegroundColor Yellow
try {
    $gitVersion = git --version
    Write-Host "✅ Git encontrado: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git nao encontrado. Instalando automaticamente..." -ForegroundColor Red
    
    $gitInstalled = Install-Software -Name "Git" -DownloadUrl "https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe" -InstallerPath "git-installer.exe" -InstallArgs "/SILENT"
    
    if (-not $gitInstalled) {
        Write-Host "❌ Falha ao instalar Git. Instale manualmente: https://git-scm.com" -ForegroundColor Red
        Read-Host "Pressione Enter para continuar"
        exit 1
    }
    
    Write-Host "⚠️  Reinicie o terminal e execute novamente para continuar." -ForegroundColor Yellow
    Read-Host "Pressione Enter para sair"
    exit 0
}

# Configurar Git se necessario
Write-Host "🔧 Configurando Git..." -ForegroundColor Yellow
$userName = git config user.name
$userEmail = git config user.email

if (-not $userName -or -not $userEmail) {
    Write-Host "📝 Configuracao do Git necessaria:" -ForegroundColor Cyan
    $userName = Read-Host "Digite seu nome"
    $userEmail = Read-Host "Digite seu email"
    
    git config --global user.name $userName
    git config --global user.email $userEmail
    Write-Host "✅ Git configurado!" -ForegroundColor Green
}

# Instalar dependencias do projeto
Write-Host "📦 Instalando dependencias do projeto..." -ForegroundColor Yellow
try {
    npm install
    Write-Host "✅ Dependencias instaladas!" -ForegroundColor Green
} catch {
    Write-Host "❌ Erro ao instalar dependencias: $($_.Exception.Message)" -ForegroundColor Red
}

# Configurar banco de dados
Write-Host "🗄️  Configurando banco de dados..." -ForegroundColor Yellow
try {
    npx prisma db push
    Write-Host "✅ Banco configurado!" -ForegroundColor Green
} catch {
    Write-Host "❌ Erro ao configurar banco: $($_.Exception.Message)" -ForegroundColor Red
}

# Popular banco com dados de exemplo
Write-Host "🌱 Populando banco com dados de exemplo..." -ForegroundColor Yellow
try {
    npm run db:seed
    Write-Host "✅ Dados de exemplo criados!" -ForegroundColor Green
} catch {
    Write-Host "❌ Erro ao popular banco: $($_.Exception.Message)" -ForegroundColor Red
}

# Inicializar Git
Write-Host "🔧 Inicializando Git..." -ForegroundColor Yellow
if (-not (Test-Path ".git")) {
    git init
    Write-Host "✅ Repositorio Git inicializado!" -ForegroundColor Green
}

# Adicionar arquivos
Write-Host "📦 Adicionando arquivos ao Git..." -ForegroundColor Yellow
git add .

# Commit
Write-Host "💾 Fazendo commit..." -ForegroundColor Yellow
git commit -m "feat: Sistema Animed - Sistema veterinario completo com conformidade LGPD"
Write-Host "✅ Commit realizado!" -ForegroundColor Green

# Verificar remote origin
Write-Host "🔍 Verificando configuracao do GitHub..." -ForegroundColor Yellow
$remoteOrigin = git remote get-url origin 2>$null

if (-not $remoteOrigin) {
    Write-Host ""
    Write-Host "📋 CONFIGURACAO DO GITHUB NECESSARIA:" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "1. Acesse: https://github.com" -ForegroundColor White
    Write-Host "2. Clique em 'New repository'" -ForegroundColor White
    Write-Host "3. Nome: animed-sistema-veterinario" -ForegroundColor White
    Write-Host "4. Descricao: Sistema veterinario completo com LGPD" -ForegroundColor White
    Write-Host "5. Clique em 'Create repository'" -ForegroundColor White
    Write-Host "6. Copie a URL do repositorio" -ForegroundColor White
    Write-Host ""
    
    $repoUrl = Read-Host "Cole a URL do repositorio aqui"
    git remote add origin $repoUrl
    Write-Host "✅ Remote configurado!" -ForegroundColor Green
}

# Enviar para GitHub
Write-Host "🚀 Enviando para o GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "✅ Codigo enviado com sucesso para o GitHub!" -ForegroundColor Green
    Write-Host "🌐 Acesse seu repositorio no GitHub para ver o resultado!" -ForegroundColor Green
} catch {
    Write-Host "❌ Erro ao enviar para o GitHub: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host ""
    Write-Host "💡 Solucoes:" -ForegroundColor Yellow
    Write-Host "1. Verifique se o repositorio existe no GitHub" -ForegroundColor White
    Write-Host "2. Configure um token de acesso pessoal" -ForegroundColor White
    Write-Host "3. Use GitHub Desktop" -ForegroundColor White
}

Write-Host ""
Write-Host "🎉 INSTALACAO CONCLUIDA!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 PROXIMOS PASSOS:" -ForegroundColor Cyan
Write-Host "1. Acesse seu repositorio no GitHub" -ForegroundColor White
Write-Host "2. Configure deploy automatico no Vercel" -ForegroundColor White
Write-Host "3. Execute 'npm run dev' para testar localmente" -ForegroundColor White
Write-Host ""
Write-Host "📚 Consulte GUIA_GITHUB.md para mais informacoes." -ForegroundColor Blue
Read-Host "Pressione Enter para sair"
