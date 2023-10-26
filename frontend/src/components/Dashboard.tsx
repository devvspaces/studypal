import { Outlet } from 'react-router-dom'

import Navbar from './Navbar'
import Sidebar from './Sidebar'

const Dashboard = () => {
  return (
    <>
      <Navbar appTitle="Studypal" />
      <div className="flex flex-row flex-1">
        <Sidebar />
        <div className="p-4 flex flex-row w-full h-screen items-stretch justify-stretch">
          <Outlet />
        </div>
      </div>
    </>
  )
}

export default Dashboard
