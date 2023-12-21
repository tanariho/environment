import NextAuth from 'next-auth'
import GoogleProvider from 'next-auth/providers/google'
import { clientId, clientSecret } from '@/app/components/config/client'


const handler  = NextAuth({
  providers: [
    GoogleProvider({
      clientId: clientId,
      clientSecret: clientSecret,
    }),
  ],
})

export { handler as GET, handler as POST }