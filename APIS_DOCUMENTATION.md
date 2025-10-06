# 📡 Documentação das APIs - Sistema Animed

## 🔗 **Endpoints Disponíveis**

### **👥 Clientes**

#### `GET /api/clients`
Lista todos os clientes com paginação e busca.

**Query Parameters:**
- `search` (string): Termo de busca
- `page` (number): Página (padrão: 1)
- `limit` (number): Itens por página (padrão: 10)

**Response:**
```json
{
  "clients": [
    {
      "id": "string",
      "name": "string",
      "email": "string",
      "phone": "string",
      "address": "string",
      "cpf": "string",
      "birthDate": "string",
      "dataProcessingConsent": boolean,
      "marketingConsent": boolean,
      "dataSharingConsent": boolean,
      "consentDate": "string",
      "pets": [...]
    }
  ],
  "pagination": {
    "page": number,
    "limit": number,
    "total": number,
    "pages": number
  }
}
```

#### `POST /api/clients`
Cria um novo cliente.

**Body:**
```json
{
  "name": "string",
  "email": "string",
  "phone": "string",
  "address": "string",
  "cpf": "string",
  "birthDate": "string",
  "dataProcessingConsent": boolean,
  "marketingConsent": boolean,
  "dataSharingConsent": boolean
}
```

#### `GET /api/clients/[id]`
Busca um cliente específico por ID.

#### `PUT /api/clients/[id]`
Atualiza um cliente existente.

#### `DELETE /api/clients/[id]`
Remove um cliente (apenas se não tiver pets).

#### `PUT /api/clients/[id]/consent`
Atualiza os consentimentos LGPD de um cliente.

**Body:**
```json
{
  "dataProcessing": boolean,
  "marketing": boolean,
  "dataSharing": boolean
}
```

### **🐾 Pets**

#### `GET /api/pets`
Lista todos os pets com paginação e busca.

**Query Parameters:**
- `search` (string): Termo de busca
- `clientId` (string): Filtrar por cliente
- `page` (number): Página
- `limit` (number): Itens por página

#### `POST /api/pets`
Cria um novo pet.

**Body:**
```json
{
  "name": "string",
  "species": "string",
  "breed": "string",
  "gender": "string",
  "birthDate": "string",
  "weight": number,
  "color": "string",
  "microchip": "string",
  "notes": "string",
  "clientId": "string"
}
```

### **📅 Agendamentos**

#### `GET /api/appointments`
Lista todos os agendamentos.

**Query Parameters:**
- `search` (string): Termo de busca
- `status` (string): Filtrar por status
- `date` (string): Filtrar por data
- `page` (number): Página
- `limit` (number): Itens por página

#### `POST /api/appointments`
Cria um novo agendamento.

**Body:**
```json
{
  "title": "string",
  "description": "string",
  "startTime": "string",
  "endTime": "string",
  "type": "string",
  "status": "string",
  "notes": "string",
  "petId": "string",
  "clientId": "string",
  "vetId": "string"
}
```

### **📋 Prontuários**

#### `GET /api/medical-records`
Lista todos os prontuários.

**Query Parameters:**
- `search` (string): Termo de busca
- `petId` (string): Filtrar por pet
- `vetId` (string): Filtrar por veterinário
- `page` (number): Página
- `limit` (number): Itens por página

#### `POST /api/medical-records`
Cria um novo prontuário.

**Body:**
```json
{
  "title": "string",
  "description": "string",
  "diagnosis": "string",
  "treatment": "string",
  "weight": number,
  "temperature": number,
  "notes": "string",
  "petId": "string",
  "vetId": "string"
}
```

### **💰 Faturamento**

#### `GET /api/invoices`
Lista todas as faturas.

**Query Parameters:**
- `search` (string): Termo de busca
- `status` (string): Filtrar por status
- `page` (number): Página
- `limit` (number): Itens por página

#### `POST /api/invoices`
Cria uma nova fatura.

**Body:**
```json
{
  "clientId": "string",
  "items": [
    {
      "description": "string",
      "quantity": number,
      "price": number
    }
  ],
  "notes": "string",
  "dueDate": "string"
}
```

### **💉 Vacinas**

#### `GET /api/vaccines`
Lista todas as vacinas.

**Query Parameters:**
- `search` (string): Termo de busca
- `page` (number): Página
- `limit` (number): Itens por página

#### `POST /api/vaccines`
Cria uma nova vacina.

**Body:**
```json
{
  "name": "string",
  "description": "string",
  "manufacturer": "string",
  "batch": "string",
  "expiryDate": "string",
  "stock": number
}
```

### **💊 Tratamentos**

#### `GET /api/treatments`
Lista todos os tratamentos.

**Query Parameters:**
- `search` (string): Termo de busca
- `status` (string): Filtrar por status
- `petId` (string): Filtrar por pet
- `page` (number): Página
- `limit` (number): Itens por página

#### `POST /api/treatments`
Cria um novo tratamento.

**Body:**
```json
{
  "name": "string",
  "description": "string",
  "dosage": "string",
  "frequency": "string",
  "duration": "string",
  "status": "string",
  "startDate": "string",
  "endDate": "string",
  "notes": "string",
  "petId": "string",
  "vetId": "string"
}
```

### **📊 Dashboard**

#### `GET /api/dashboard/stats`
Retorna estatísticas do dashboard.

**Query Parameters:**
- `period` (string): Período (day, week, month)

**Response:**
```json
{
  "totalClients": number,
  "totalPets": number,
  "todayAppointments": number,
  "monthlyRevenue": number,
  "pendingAppointments": number,
  "completedAppointments": number,
  "activeTreatments": number,
  "pendingVaccines": number,
  "totalRecords": number,
  "recentAppointments": [...],
  "alerts": [...]
}
```

## 🔒 **Segurança e Auditoria**

### **Logs de Auditoria**
Todas as operações são registradas automaticamente no sistema de auditoria:

- **CREATE**: Criação de registros
- **UPDATE**: Atualização de registros
- **DELETE**: Exclusão de registros
- **CONSENT_UPDATE**: Atualização de consentimentos LGPD

### **Validações**
- Validação de dados obrigatórios
- Verificação de existência de registros relacionados
- Validação de CPF e email únicos
- Verificação de conflitos de horário em agendamentos

### **Conformidade LGPD**
- Logs de consentimento automáticos
- Rastreamento de alterações de dados pessoais
- Registro de IP e User-Agent para auditoria

## 📝 **Códigos de Status HTTP**

- **200**: Sucesso
- **201**: Criado com sucesso
- **400**: Dados inválidos
- **404**: Recurso não encontrado
- **500**: Erro interno do servidor

## 🔧 **Exemplos de Uso**

### **Criar um Cliente**
```javascript
const response = await fetch('/api/clients', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    name: 'João Silva',
    email: 'joao@email.com',
    phone: '(11) 99999-9999',
    dataProcessingConsent: true,
    marketingConsent: false,
    dataSharingConsent: false
  })
})
```

### **Buscar Clientes com Paginação**
```javascript
const response = await fetch('/api/clients?page=1&limit=10&search=João')
const data = await response.json()
```

### **Atualizar Consentimento LGPD**
```javascript
const response = await fetch('/api/clients/123/consent', {
  method: 'PUT',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    dataProcessing: true,
    marketing: true,
    dataSharing: false
  })
})
```

### **Buscar Estatísticas do Dashboard**
```javascript
const response = await fetch('/api/dashboard/stats?period=month')
const stats = await response.json()
```

## 🚀 **Integração Frontend**

Todas as páginas do frontend foram integradas com as APIs:

- ✅ **Dashboard**: Dados reais do banco
- ✅ **Clientes**: CRUD completo com LGPD
- ✅ **Pets**: Cadastro e listagem
- ✅ **Agendamentos**: Gestão completa
- ✅ **Prontuários**: Registros médicos
- ✅ **Faturamento**: Controle financeiro
- ✅ **Vacinas**: Controle de estoque
- ✅ **Tratamentos**: Gestão de medicamentos

O sistema está **100% integrado** e funcional! 🎉





