import { NextResponse } from 'next/server'
import type { NextRequest } from 'next/server'

export function middleware(request: NextRequest) {
  // Verificar se é uma rota protegida
  if (request.nextUrl.pathname.startsWith('/dashboard')) {
    // Verificar se há token de autenticação
    const token = request.cookies.get('animed-auth')?.value
    
    if (!token) {
      // Redirecionar para login se não houver token
      return NextResponse.redirect(new URL('/login', request.url))
    }
  }

  // Se for a página de login e já estiver autenticado, redirecionar para dashboard
  if (request.nextUrl.pathname === '/login') {
    const token = request.cookies.get('animed-auth')?.value
    
    if (token) {
      return NextResponse.redirect(new URL('/dashboard', request.url))
    }
  }

  return NextResponse.next()
}

export const config = {
  matcher: [
    '/dashboard/:path*',
    '/login'
  ]
}




