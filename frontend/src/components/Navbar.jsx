import React from 'react'
import Search from './Search'
import { Link } from 'react-router-dom'

const Navbar = ({ appTitle }) => {
  return (
    <header className="flex w-full items-center justify-between bg-black text-white p-6">
      <Link to="/" className="text-white no-underline">
        <h1 className="m-0">{appTitle}</h1>
      </Link>
      <Search />
    </header>
  )
}

export default Navbar
