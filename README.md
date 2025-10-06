# 🐕 Animed - Sistema Veterinário

Sistema completo de gestão para clínicas veterinárias, desenvolvido com Next.js, TypeScript e Prisma.

## ✨ Funcionalidades

- **Dashboard Completo**: Visão geral da clínica com estatísticas e agendamentos
- **Gestão de Clientes**: Cadastro e controle de clientes
- **Gestão de Pets**: Registro completo dos animais
- **Sistema de Atendimentos**: Agendamento e controle de consultas
- **Prontuário Eletrônico**: Registro médico completo
- **Sistema de Vacinas**: Controle de vacinação
- **Faturamento**: Geração de faturas e controle financeiro
- **Autenticação Segura**: Sistema de login com diferentes níveis de acesso
- **Interface Responsiva**: Funciona perfeitamente em desktop e mobile

## 🚀 Instalação

### Pré-requisitos

- Node.js 18+ 
- npm ou yarn
- Git (para clonar o repositório)

### Passos para instalação

1. **Clone o repositório**
   ```bash
   git clone https://github.com/SEU-USUARIO/animed-sistema-veterinario.git
   cd animed-sistema-veterinario
   ```

2. **Instale as dependências**
   ```bash
   npm install
   ```

3. **Configure o banco de dados**
   ```bash
   npx prisma db push
   ```

4. **Popule o banco com dados de exemplo**
   ```bash
   npm run db:seed
   ```

5. **Inicie o servidor de desenvolvimento**
   ```bash
   npm run dev
   ```

6. **Acesse o sistema**
   Abra [http://localhost:3000](http://localhost:3000) no seu navegador

## 🔐 Credenciais de Acesso

Após executar o seed, você pode acessar o sistema com:

- **Administrador**: admin@animed.com / admin123
- **Veterinário**: vet@animed.com / admin123  
- **Recepcionista**: recepcao@animed.com / admin123

## 🛠️ Tecnologias Utilizadas

- **Frontend**: Next.js 14, React, TypeScript
- **Styling**: Tailwind CSS, Radix UI
- **Backend**: Next.js API Routes
- **Banco de Dados**: SQLite (local) com Prisma ORM
- **Autenticação**: NextAuth.js
- **Ícones**: Lucide React

## 📁 Estrutura do Projeto

```
animed-vet-system/
├── app/                    # Páginas do Next.js
│   ├── api/               # API Routes
│   ├── dashboard/         # Páginas do dashboard
│   └── login/             # Página de login
├── components/            # Componentes React
│   ├── ui/               # Componentes de UI base
│   └── layout/           # Componentes de layout
├── lib/                  # Utilitários e configurações
├── prisma/               # Schema do banco de dados
└── types/                # Definições de tipos TypeScript
```

## 🔧 Scripts Disponíveis

- `npm run dev` - Inicia o servidor de desenvolvimento
- `npm run build` - Gera build de produção
- `npm run start` - Inicia servidor de produção
- `npm run db:push` - Sincroniza schema com o banco
- `npm run db:studio` - Abre Prisma Studio
- `npm run db:seed` - Popula banco com dados de exemplo

## 🎯 Funcionalidades Principais

### Dashboard
- Estatísticas gerais da clínica
- Atendimentos do dia
- Resumo financeiro
- Indicadores de performance

### Gestão de Clientes
- Cadastro completo de clientes
- Histórico de atendimentos
- Controle de contato e endereço
- Validação de CPF

### Gestão de Pets
- Registro detalhado dos animais
- Histórico médico completo
- Controle de vacinação
- Microchip e identificação

### Atendimentos
- Sistema de agendamento intuitivo
- Diferentes tipos de consulta
- Controle de status
- Notificações automáticas

### Prontuário Eletrônico
- Registro médico completo
- Histórico de consultas
- Diagnósticos e tratamentos
- Anexos e imagens

### Faturamento
- Geração automática de faturas
- Controle de pagamentos
- Relatórios financeiros
- Integração com agendamentos

## 🔒 Segurança

- Autenticação segura com NextAuth.js
- Senhas criptografadas com bcrypt
- Validação de dados com Zod
- Controle de acesso por níveis
- Dados armazenados localmente (SQLite)

## 📱 Responsividade

O sistema é totalmente responsivo e funciona perfeitamente em:
- Desktop
- Tablet
- Smartphone

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 📤 Enviar para GitHub

Para enviar este sistema ao GitHub, consulte os guias:

- 📚 **[GUIA_GITHUB.md](./GUIA_GITHUB.md)** - Guia completo passo a passo
- 🚀 **[DEPLOY_GITHUB.md](./DEPLOY_GITHUB.md)** - Deploy e configuração
- ⚡ **Scripts automatizados:**
  - `enviar-github.ps1` (PowerShell)
  - `enviar-github.bat` (Command Prompt)

### 🚀 Envio Rápido

```bash
# Método 1: Script automatizado
.\enviar-github.ps1

# Método 2: Comandos manuais
git init
git add .
git commit -m "feat: Sistema Animed completo"
git remote add origin https://github.com/SEU-USUARIO/animed-sistema-veterinario.git
git push -u origin main
```

## 📞 Suporte

Para suporte ou dúvidas, entre em contato através dos issues do GitHub.

---

Desenvolvido com ❤️ para clínicas veterinárias



