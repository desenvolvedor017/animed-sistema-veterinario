// Script para testar as APIs do sistema
const BASE_URL = 'http://localhost:3001'

async function testAPIs() {
  console.log('🧪 Testando APIs do Sistema Animed...\n')

  try {
    // Testar API de estatísticas do dashboard
    console.log('📊 Testando Dashboard Stats...')
    const statsResponse = await fetch(`${BASE_URL}/api/dashboard/stats`)
    if (statsResponse.ok) {
      const stats = await statsResponse.json()
      console.log('✅ Dashboard Stats:', {
        totalClients: stats.totalClients,
        totalPets: stats.totalPets,
        todayAppointments: stats.todayAppointments,
        monthlyRevenue: stats.monthlyRevenue
      })
    } else {
      console.log('❌ Erro no Dashboard Stats:', statsResponse.status)
    }

    // Testar API de clientes
    console.log('\n👥 Testando Clientes...')
    const clientsResponse = await fetch(`${BASE_URL}/api/clients`)
    if (clientsResponse.ok) {
      const clients = await clientsResponse.json()
      console.log('✅ Clientes:', {
        total: clients.clients.length,
        firstClient: clients.clients[0]?.name || 'Nenhum cliente'
      })
    } else {
      console.log('❌ Erro nos Clientes:', clientsResponse.status)
    }

    // Testar API de pets
    console.log('\n🐾 Testando Pets...')
    const petsResponse = await fetch(`${BASE_URL}/api/pets`)
    if (petsResponse.ok) {
      const pets = await petsResponse.json()
      console.log('✅ Pets:', {
        total: pets.pets.length,
        firstPet: pets.pets[0]?.name || 'Nenhum pet'
      })
    } else {
      console.log('❌ Erro nos Pets:', petsResponse.status)
    }

    // Testar API de agendamentos
    console.log('\n📅 Testando Agendamentos...')
    const appointmentsResponse = await fetch(`${BASE_URL}/api/appointments`)
    if (appointmentsResponse.ok) {
      const appointments = await appointmentsResponse.json()
      console.log('✅ Agendamentos:', {
        total: appointments.appointments.length,
        firstAppointment: appointments.appointments[0]?.title || 'Nenhum agendamento'
      })
    } else {
      console.log('❌ Erro nos Agendamentos:', appointmentsResponse.status)
    }

    // Testar API de prontuários
    console.log('\n📋 Testando Prontuários...')
    const recordsResponse = await fetch(`${BASE_URL}/api/medical-records`)
    if (recordsResponse.ok) {
      const records = await recordsResponse.json()
      console.log('✅ Prontuários:', {
        total: records.records.length,
        firstRecord: records.records[0]?.title || 'Nenhum prontuário'
      })
    } else {
      console.log('❌ Erro nos Prontuários:', recordsResponse.status)
    }

    // Testar API de faturas
    console.log('\n💰 Testando Faturas...')
    const invoicesResponse = await fetch(`${BASE_URL}/api/invoices`)
    if (invoicesResponse.ok) {
      const invoices = await invoicesResponse.json()
      console.log('✅ Faturas:', {
        total: invoices.invoices.length,
        firstInvoice: invoices.invoices[0]?.number || 'Nenhuma fatura'
      })
    } else {
      console.log('❌ Erro nas Faturas:', invoicesResponse.status)
    }

    // Testar API de vacinas
    console.log('\n💉 Testando Vacinas...')
    const vaccinesResponse = await fetch(`${BASE_URL}/api/vaccines`)
    if (vaccinesResponse.ok) {
      const vaccines = await vaccinesResponse.json()
      console.log('✅ Vacinas:', {
        total: vaccines.vaccines.length,
        firstVaccine: vaccines.vaccines[0]?.name || 'Nenhuma vacina'
      })
    } else {
      console.log('❌ Erro nas Vacinas:', vaccinesResponse.status)
    }

    // Testar API de tratamentos
    console.log('\n💊 Testando Tratamentos...')
    const treatmentsResponse = await fetch(`${BASE_URL}/api/treatments`)
    if (treatmentsResponse.ok) {
      const treatments = await treatmentsResponse.json()
      console.log('✅ Tratamentos:', {
        total: treatments.treatments.length,
        firstTreatment: treatments.treatments[0]?.name || 'Nenhum tratamento'
      })
    } else {
      console.log('❌ Erro nos Tratamentos:', treatmentsResponse.status)
    }

    console.log('\n🎉 Teste das APIs concluído!')

  } catch (error) {
    console.error('❌ Erro geral:', error.message)
  }
}

// Executar teste se estiver no navegador
if (typeof window !== 'undefined') {
  testAPIs()
} else {
  console.log('Execute este script no console do navegador para testar as APIs')
}





