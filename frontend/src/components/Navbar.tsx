import { Link } from 'react-router-dom'

import Search from './Search'

type NavbarProps = {
  appTitle: string
}

const Navbar = ({ appTitle }: NavbarProps) => {
  return (
    <header style={{ fontFamily: "'Manrope Variable', sans-serif" }} className="flex flex-col sm:flex-row gap-4 sm:gap-0 w-full items-left sm:items-center justify-between bg-white text-white p-6 border-b">
      <Link to="/" className="text-white no-underline">
        <h1 className="m-0 text-3xl text-indigo-900 font-bold">{appTitle}</h1>
      </Link>
      <Search />
    </header>
  )
}

export default Navbar
