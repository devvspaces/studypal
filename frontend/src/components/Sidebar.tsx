import React from 'react'
import { Link } from 'react-router-dom'

const Sidebar = () => {
  return (
    <div className="p-4 flex flex-row w-48 items-stretch justify-stretch border-r border-gray-300">
      <ul className="flex flex-col w-48 items-stretch justify-stretch list-none m-0 p-0">
        <Link to="/dashboard" className="text-black no-underline w-full">
          <li className="p-2 border-b border-gray-300 hover:bg-gray-200">
            Dashboard
          </li>
        </Link>
        <Link
          to="/dashboard/courses"
          className="text-black no-underline w-full"
        >
          <li className="p-2 border-b border-gray-300 hover:bg-gray-200">
            Courses
          </li>
        </Link>
        <Link
          to="/dashboard/settings"
          className="text-black no-underline w-full"
        >
          <li className="p-2 border-b border-gray-300 hover:bg-gray-200">
            Settings
          </li>
        </Link>
      </ul>
    </div>
  )
}

export default Sidebar
