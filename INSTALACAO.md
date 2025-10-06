# 🚀 Guia de Instalação - Animed Sistema Veterinário

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- **Node.js** versão 18 ou superior
- **npm** (vem com o Node.js) ou **yarn**

## 🔧 Instalação Passo a Passo

### 1. Instalar Dependências

Abra o terminal na pasta do projeto e execute:

```bash
npm install
```

### 2. Configurar o Banco de Dados

Execute o comando para criar e configurar o banco SQLite:

```bash
npx prisma db push
```

### 3. Popular o Banco com Dados de Exemplo

Execute o script de seed para criar usuários e dados de exemplo:

```bash
npm run db:seed
```

### 4. Iniciar o Servidor

Execute o comando para iniciar o servidor de desenvolvimento:

```bash
npm run dev
```

### 5. Acessar o Sistema

Abra seu navegador e acesse:
```
http://localhost:3000
```

## 🔐 Credenciais de Acesso

Após executar o seed, você pode fazer login com:

| Usuário | Email | Senha | Função |
|---------|-------|-------|--------|
| Administrador | admin@animed.com | admin123 | Acesso total |
| Veterinário | vet@animed.com | admin123 | Acesso médico |
| Recepcionista | recepcao@animed.com | admin123 | Acesso limitado |

## 📱 Funcionalidades Disponíveis

### ✅ Implementadas
- ✅ Sistema de autenticação completo
- ✅ Dashboard com estatísticas
- ✅ Gestão de clientes
- ✅ Gestão de pets
- ✅ Sistema de agendamentos
- ✅ Interface responsiva

### 🚧 Em Desenvolvimento
- 🚧 Prontuário eletrônico
- 🚧 Sistema de faturamento
- 🚧 Controle de vacinas
- 🚧 Relatórios avançados

## 🛠️ Comandos Úteis

```bash
# Desenvolvimento
npm run dev          # Inicia servidor de desenvolvimento
npm run build        # Gera build de produção
npm run start        # Inicia servidor de produção

# Banco de dados
npm run db:push      # Sincroniza schema com banco
npm run db:studio    # Abre Prisma Studio (interface visual)
npm run db:seed      # Popula banco com dados de exemplo

# Linting
npm run lint         # Executa verificação de código
```

## 🗄️ Estrutura do Banco de Dados

O sistema usa SQLite (arquivo local) com as seguintes tabelas principais:

- **users** - Usuários do sistema
- **clients** - Clientes da clínica
- **pets** - Animais dos clientes
- **appointments** - Agendamentos
- **medical_records** - Prontuários médicos
- **treatments** - Tratamentos
- **invoices** - Faturas
- **vaccines** - Vacinas
- **vaccine_applications** - Aplicações de vacina

## 🔒 Segurança

- Senhas criptografadas com bcrypt
- Autenticação com NextAuth.js
- Validação de dados com Zod
- Controle de acesso por níveis
- Dados armazenados localmente

## 📊 Dados de Exemplo

O seed cria automaticamente:

- 3 usuários (admin, vet, recepcionista)
- 3 clientes com dados completos
- 3 pets com informações detalhadas
- 3 agendamentos para demonstração
- 1 prontuário médico
- 2 vacinas cadastradas
- 1 fatura de exemplo

## 🚨 Solução de Problemas

### Erro de Dependências
```bash
# Limpar cache e reinstalar
rm -rf node_modules package-lock.json
npm install
```

### Erro de Banco de Dados
```bash
# Recriar banco
rm prisma/dev.db
npx prisma db push
npm run db:seed
```

### Porta em Uso
Se a porta 3000 estiver ocupada, o Next.js automaticamente usará a próxima disponível (3001, 3002, etc.)

## 📞 Suporte

Para dúvidas ou problemas:

1. Verifique se todos os pré-requisitos estão instalados
2. Execute os comandos na ordem correta
3. Verifique se não há erros no terminal
4. Consulte a documentação do Next.js e Prisma

## 🎯 Próximos Passos

Após a instalação bem-sucedida:

1. Faça login com as credenciais fornecidas
2. Explore o dashboard e as funcionalidades
3. Teste a criação de clientes e pets
4. Experimente o sistema de agendamentos
5. Personalize conforme suas necessidades

---

**Desenvolvido com ❤️ para clínicas veterinárias**





