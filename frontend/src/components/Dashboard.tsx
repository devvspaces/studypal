import { Outlet } from 'react-router-dom'

import Navbar from './Navbar'
import Sidebar from './Sidebar'

import "@fontsource-variable/manrope"

const Dashboard = () => {
  return (
    <>
      <Navbar appTitle="Studypal" />
      <div style={{ fontFamily: "'Manrope Variable', sans-serif" }} className="flex flex-row flex-1">
        <Sidebar />
        <div className="p-4 flex flex-row w-full h-screen items-stretch justify-stretch">
          <Outlet />
        </div>
      </div>
    </>
  )
}

export default Dashboard
