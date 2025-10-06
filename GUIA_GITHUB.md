# 🚀 Guia para Enviar o Sistema Animed ao GitHub

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter:

- ✅ **Git instalado** no seu computador
- ✅ **Conta no GitHub** criada
- ✅ **Node.js** instalado (para desenvolvimento)

## 🔧 Passo a Passo Completo

### 1. **Instalar Git (se não estiver instalado)**

**Windows:**
- Baixe em: https://git-scm.com/download/win
- Instale com as configurações padrão

**Verificar instalação:**
```bash
git --version
```

### 2. **Configurar Git (primeira vez)**

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"
```

### 3. **Inicializar Repositório Local**

No terminal, na pasta do projeto:

```bash
# Inicializar repositório Git
git init

# Adicionar todos os arquivos
git add .

# Primeiro commit
git commit -m "feat: Sistema Animed - Sistema veterinário completo"
```

### 4. **Criar Repositório no GitHub**

1. Acesse: https://github.com
2. Clique em **"New repository"**
3. Preencha:
   - **Repository name:** `animed-sistema-veterinario`
   - **Description:** `Sistema completo de gestão para clínicas veterinárias com conformidade LGPD`
   - **Visibility:** Public ou Private (sua escolha)
   - **NÃO** marque "Add a README file" (já temos)
4. Clique em **"Create repository"**

### 5. **Conectar Repositório Local ao GitHub**

```bash
# Adicionar remote origin
git remote add origin https://github.com/SEU-USUARIO/animed-sistema-veterinario.git

# Verificar se foi adicionado
git remote -v
```

### 6. **Enviar Código para o GitHub**

```bash
# Enviar para o GitHub
git push -u origin main
```

## 📁 **Estrutura do Repositório**

O repositório incluirá:

```
animed-sistema-veterinario/
├── 📁 app/                    # Páginas Next.js
├── 📁 components/            # Componentes React
├── 📁 lib/                   # Utilitários
├── 📁 prisma/                # Schema do banco
├── 📁 public/                # Arquivos públicos
├── 📁 types/                 # Tipos TypeScript
├── 📄 README.md              # Documentação principal
├── 📄 SISTEMA_COMPLETO.md    # Funcionalidades
├── 📄 INSTALACAO.md          # Guia de instalação
├── 📄 CONFORMIDADE_LGPD.md   # Documentação LGPD
└── 📄 .gitignore             # Arquivos ignorados
```

## 🔒 **Arquivos Ignorados (Segurança)**

O `.gitignore` protege:
- ❌ `node_modules/` - Dependências
- ❌ `.env` - Variáveis de ambiente
- ❌ `prisma/dev.db` - Banco de dados local
- ❌ `*.log` - Arquivos de log
- ❌ `public/uploads/*` - Arquivos enviados

## 📝 **Comandos Git Úteis**

```bash
# Ver status dos arquivos
git status

# Adicionar arquivos específicos
git add arquivo.txt

# Adicionar todos os arquivos
git add .

# Fazer commit
git commit -m "Descrição da alteração"

# Enviar para GitHub
git push

# Baixar alterações do GitHub
git pull

# Ver histórico de commits
git log --oneline
```

## 🚀 **Deploy Automático (Opcional)**

### **Vercel (Recomendado)**

1. Acesse: https://vercel.com
2. Conecte sua conta GitHub
3. Importe o repositório
4. Configure:
   - **Framework Preset:** Next.js
   - **Build Command:** `npm run build`
   - **Output Directory:** `.next`
5. Deploy automático!

### **Netlify**

1. Acesse: https://netlify.com
2. Conecte GitHub
3. Configure build:
   - **Build command:** `npm run build`
   - **Publish directory:** `out`
4. Deploy!

## 📋 **Checklist Final**

Antes de enviar, verifique:

- ✅ **README.md** está completo
- ✅ **package.json** tem todas as dependências
- ✅ **.gitignore** está configurado
- ✅ **Dados sensíveis** não estão no código
- ✅ **Documentação** está atualizada
- ✅ **Sistema funciona** localmente

## 🔐 **Segurança**

### **Dados Sensíveis NÃO Incluídos:**
- ❌ Senhas de banco de dados
- ❌ Chaves de API
- ❌ Tokens de autenticação
- ❌ Dados de clientes reais

### **Arquivos de Exemplo:**
- ✅ `env.example` - Template de configuração
- ✅ `env.production.example` - Configuração produção

## 📞 **Suporte**

Se encontrar problemas:

1. **Git não reconhecido:** Reinstale o Git
2. **Erro de autenticação:** Configure SSH ou use HTTPS
3. **Arquivo muito grande:** Verifique .gitignore
4. **Conflitos:** Use `git pull` antes de `git push`

## 🎯 **Próximos Passos**

Após enviar para o GitHub:

1. **Configurar Issues** para bugs e melhorias
2. **Criar Releases** para versões
3. **Configurar Actions** para CI/CD
4. **Adicionar Colaboradores** se necessário
5. **Documentar APIs** com GitHub Pages

---

**🚀 Seu sistema Animed estará disponível no GitHub e pronto para colaboração!**

