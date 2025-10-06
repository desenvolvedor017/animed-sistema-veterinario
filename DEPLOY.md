# 🚀 Deploy do Sistema Animed

## 🌟 **OPÇÃO 1: VERCEL (Recomendado)**

### **Vantagens:**
- ✅ Otimizado para Next.js
- ✅ Deploy automático via GitHub
- ✅ CDN global (muito rápido)
- ✅ SSL gratuito
- ✅ Banco de dados PostgreSQL incluído
- ✅ Domínio personalizado gratuito
- ✅ Escalabilidade automática

### **Passos para Deploy:**

#### 1. **Preparar o Projeto**
```bash
# 1. Commit no GitHub
git add .
git commit -m "Preparando para deploy"
git push origin main

# 2. Criar conta na Vercel
# Acesse: https://vercel.com
```

#### 2. **Configurar na Vercel**
1. **Importar Projeto:**
   - Conecte sua conta GitHub
   - Selecione o repositório Animed
   - Configure: Framework Preset = "Next.js"

2. **Variáveis de Ambiente:**
   ```
   DATABASE_URL=postgresql://usuario:senha@host:porta/database
   NEXTAUTH_SECRET=sua-chave-secreta-super-segura-32-caracteres
   NEXTAUTH_URL=https://seu-dominio.vercel.app
   ```

3. **Banco de Dados:**
   - Vercel → Storage → Create Database → Postgres
   - Copie a string de conexão
   - Adicione como `DATABASE_URL`

#### 3. **Deploy**
- Clique em "Deploy"
- Aguarde 2-3 minutos
- Pronto! Sistema online!

---

## 🌐 **OPÇÃO 2: NETLIFY**

### **Vantagens:**
- ✅ Deploy via GitHub
- ✅ CDN global
- ✅ SSL gratuito
- ✅ Formulários e funções serverless

### **Passos:**
1. Criar conta na Netlify
2. Conectar repositório GitHub
3. Configurar variáveis de ambiente
4. Usar banco externo (PlanetScale, Supabase)

---

## ☁️ **OPÇÃO 3: RAILWAY**

### **Vantagens:**
- ✅ Full-stack hosting
- ✅ Banco PostgreSQL incluído
- ✅ Deploy via GitHub
- ✅ Logs em tempo real

### **Passos:**
1. Criar conta na Railway
2. Conectar GitHub
3. Adicionar banco PostgreSQL
4. Configurar variáveis de ambiente

---

## 🖥️ **OPÇÃO 4: VPS/SERVIDOR PRÓPRIO**

### **Requisitos:**
- Ubuntu 20.04+ ou CentOS 8+
- 2GB RAM mínimo
- 20GB SSD

### **Comandos:**
```bash
# 1. Instalar Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# 2. Instalar PM2
sudo npm install -g pm2

# 3. Instalar Nginx
sudo apt update
sudo apt install nginx

# 4. Configurar SSL (Certbot)
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d seudominio.com

# 5. Deploy da aplicação
git clone https://github.com/seu-usuario/animed.git
cd animed
npm install
npm run build
pm2 start npm --name "animed" -- start
pm2 save
pm2 startup
```

---

## 🗄️ **BANCOS DE DADOS RECOMENDADOS**

### **1. Vercel Postgres** (com Vercel)
- ✅ Integração nativa
- ✅ Backup automático
- ✅ Escalabilidade

### **2. Supabase** (gratuito)
- ✅ PostgreSQL completo
- ✅ Interface web
- ✅ APIs automáticas
- ✅ 500MB gratuito

### **3. PlanetScale** (gratuito)
- ✅ MySQL serverless
- ✅ Branching de banco
- ✅ 5GB gratuito

### **4. Railway PostgreSQL**
- ✅ 1GB gratuito
- ✅ Fácil integração

---

## 🔧 **CONFIGURAÇÕES DE PRODUÇÃO**

### **Variáveis de Ambiente Obrigatórias:**
```env
# Banco de dados
DATABASE_URL=postgresql://usuario:senha@host:porta/database

# Autenticação
NEXTAUTH_SECRET=sua-chave-super-secreta-32-caracteres-minimo
NEXTAUTH_URL=https://seu-dominio.com

# Ambiente
NODE_ENV=production
```

### **Otimizações Aplicadas:**
- ✅ Console.log removido em produção
- ✅ Bundle otimizado
- ✅ Headers de segurança
- ✅ Compressão ativada
- ✅ Cache configurado

---

## 📊 **COMPARAÇÃO DE CUSTOS**

| Serviço | Gratuito | Pago (mês) | Banco Incluído |
|---------|----------|------------|----------------|
| **Vercel** | ✅ | $20+ | ✅ PostgreSQL |
| **Netlify** | ✅ | $19+ | ❌ Externo |
| **Railway** | ✅ | $5+ | ✅ PostgreSQL |
| **VPS** | ❌ | $5-20 | ❌ Instalar |

---

## 🎯 **RECOMENDAÇÃO FINAL**

**Para o Sistema Animed, recomendo:**

1. **🥇 VERCEL** - Melhor opção geral
   - Deploy em 2 minutos
   - Performance excelente
   - Suporte nativo ao Next.js

2. **🥈 RAILWAY** - Alternativa completa
   - Mais controle
   - Logs detalhados
   - Preço baixo

3. **🥉 VPS** - Para desenvolvedores experientes
   - Controle total
   - Custo baixo
   - Requer mais configuração

---

## 🚀 **PRÓXIMOS PASSOS**

1. **Escolha uma opção**
2. **Crie a conta**
3. **Configure o banco de dados**
4. **Deploy!**
5. **Configure domínio personalizado** (opcional)

**O sistema estará online e funcionando em poucos minutos!** 🎉
