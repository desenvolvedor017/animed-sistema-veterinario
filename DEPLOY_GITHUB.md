# 🚀 Deploy do Sistema Animed no GitHub

## 📋 Checklist de Preparação

### ✅ **Arquivos Criados:**
- ✅ `.gitignore` - Protege dados sensíveis
- ✅ `GUIA_GITHUB.md` - Guia completo
- ✅ `enviar-github.ps1` - Script automatizado
- ✅ `public/uploads/.gitkeep` - Mantém estrutura

### ✅ **Sistema Pronto:**
- ✅ Código fonte completo
- ✅ Documentação atualizada
- ✅ Dependências configuradas
- ✅ Banco de dados estruturado

## 🚀 **Métodos de Envio**

### **Método 1: Script Automatizado (Recomendado)**

```powershell
# Execute no PowerShell como administrador
.\enviar-github.ps1
```

### **Método 2: Comandos Manuais**

```bash
# 1. Inicializar Git
git init

# 2. Configurar Git (primeira vez)
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"

# 3. Adicionar arquivos
git add .

# 4. Primeiro commit
git commit -m "feat: Sistema Animed - Sistema veterinário completo"

# 5. Conectar ao GitHub
git remote add origin https://github.com/SEU-USUARIO/animed-sistema-veterinario.git

# 6. Enviar para GitHub
git push -u origin main
```

### **Método 3: GitHub Desktop**

1. Baixe: https://desktop.github.com
2. Abra o GitHub Desktop
3. Clique em "Add an Existing Repository"
4. Selecione a pasta do projeto
5. Publique no GitHub

## 🔐 **Configurações de Segurança**

### **Arquivos Protegidos pelo .gitignore:**
```
❌ node_modules/          # Dependências
❌ .env                   # Variáveis sensíveis
❌ prisma/dev.db          # Banco de dados local
❌ *.log                  # Logs do sistema
❌ public/uploads/*       # Arquivos enviados
```

### **Arquivos Incluídos:**
```
✅ env.example            # Template de configuração
✅ env.production.example # Configuração produção
✅ public/uploads/.gitkeep # Estrutura de uploads
```

## 📁 **Estrutura do Repositório**

```
animed-sistema-veterinario/
├── 📁 app/                    # Páginas Next.js
│   ├── 📁 api/               # APIs REST
│   ├── 📁 dashboard/         # Dashboard
│   └── 📁 login/             # Autenticação
├── 📁 components/            # Componentes React
│   ├── 📁 ui/               # Componentes base
│   └── 📁 layout/           # Layout
├── 📁 lib/                   # Utilitários
├── 📁 prisma/                # Schema do banco
├── 📁 public/                # Arquivos públicos
├── 📁 types/                 # Tipos TypeScript
├── 📄 README.md              # Documentação principal
├── 📄 SISTEMA_COMPLETO.md    # Funcionalidades
├── 📄 INSTALACAO.md          # Guia de instalação
├── 📄 CONFORMIDADE_LGPD.md   # LGPD
├── 📄 GUIA_GITHUB.md         # Este guia
├── 📄 .gitignore             # Arquivos ignorados
└── 📄 package.json           # Dependências
```

## 🌐 **Deploy Automático**

### **Vercel (Recomendado)**

1. **Conectar GitHub:**
   - Acesse: https://vercel.com
   - Conecte sua conta GitHub
   - Importe o repositório

2. **Configuração:**
   - Framework: Next.js
   - Build Command: `npm run build`
   - Output Directory: `.next`

3. **Variáveis de Ambiente:**
   ```
   NEXTAUTH_URL=https://seu-dominio.vercel.app
   NEXTAUTH_SECRET=sua-chave-secreta
   DATABASE_URL=sua-url-do-banco
   ```

### **Netlify**

1. **Conectar GitHub:**
   - Acesse: https://netlify.com
   - Conecte GitHub
   - Importe repositório

2. **Configuração:**
   - Build command: `npm run build`
   - Publish directory: `out`

## 📊 **Monitoramento**

### **GitHub Actions (CI/CD)**

Crie `.github/workflows/deploy.yml`:

```yaml
name: Deploy to Vercel
on:
  push:
    branches: [main]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v2
        with:
          node-version: '18'
      - run: npm install
      - run: npm run build
      - run: npm run deploy
```

## 🔧 **Comandos Úteis**

```bash
# Ver status
git status

# Adicionar arquivos
git add .

# Commit
git commit -m "Descrição da mudança"

# Enviar
git push

# Baixar mudanças
git pull

# Ver histórico
git log --oneline

# Criar branch
git checkout -b nova-funcionalidade

# Voltar para main
git checkout main
```

## 📞 **Suporte**

### **Problemas Comuns:**

1. **Git não encontrado:**
   - Instale: https://git-scm.com/download/win

2. **Erro de autenticação:**
   - Configure SSH ou use HTTPS
   - Use token de acesso pessoal

3. **Arquivo muito grande:**
   - Verifique .gitignore
   - Use Git LFS para arquivos grandes

4. **Conflitos:**
   - Execute `git pull` antes de `git push`

### **Contato:**
- 📧 Email: suporte@animed.com
- 📱 GitHub Issues
- 📚 Documentação completa no repositório

---

**🚀 Seu sistema Animed estará disponível no GitHub e pronto para o mundo!**

