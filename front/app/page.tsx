import React from "react";
import Title from "./components/top/Title"
import Footer from "./components/top/Footer";
import Header from "./components/top/Header";
import { useSession } from 'next-auth/react'
import Loginbtn from "./components/Login-btn";

export default function Home() {
  return (
    <div>
      <main className="flex bg-gradient-to-r from-lime-200 to-lime-50 relative">

        <section className="flex-grow min-h-screen">
          <Header />
          <Title />
      <div>
        <h1>next-rails-google-auth</h1>
          <Loginbtn />
      </div>
          <Footer />
        </section>
      </main>
    </div>
  );
}
