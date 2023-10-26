import { Link } from 'react-router-dom'

import Search from './Search'

type NavbarProps = {
  appTitle: string
}

const Navbar = ({ appTitle }: NavbarProps) => {
  return (
    <header className="flex w-full items-center justify-between bg-black text-white p-6">
      <Link to="/" className="text-white no-underline">
        <h1 className="m-0 text-3xl">{appTitle}</h1>
      </Link>
      <Search />
    </header>
  )
}

export default Navbar
