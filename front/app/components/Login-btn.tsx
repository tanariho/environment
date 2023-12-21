'use client'
import React from 'react';
import { useSession, signIn, signOut } from "next-auth/react"

export default function Loginbtn() {
  const { data: session } = useSession()
  if (session) {
    return (
      <>
        {session.user?.email}でサインインしています <br />
        <button onClick={() => signOut()}>ログアウトしますか？</button>
      </>
    )
  }
  return (
    <>
      ログインしていません <br />
      <button onClick={() => signIn('google', {}, { prompt: 'login' })}>Googleでサインインする</button>
    </>
  )
}