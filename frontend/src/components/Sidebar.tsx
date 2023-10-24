import React from 'react'
import { Link } from 'react-router-dom'

const Sidebar = () => {
  return (
    <div className="flex flex-row w-max items-stretch justify-stretch border-r border-gray-300">
      <ul className="flex flex-col w-max items-stretch justify-stretch list-none m-0 p-0">
        <Link to="/dashboard" className="text-black no-underline w-min sm:w-full">
          <button id='dashboard' className="p-8 flex gap-2 text-left hover:bg-gray-200 w-min sm:w-full indent-128 sm:indent-0">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M2.69336 13.713C2.69336 8.082 3.30736 8.475 6.61236 5.41C8.05836 4.246 10.3084 2 12.2514 2C14.1934 2 16.4884 4.235 17.9474 5.41C21.2524 8.475 21.8654 8.082 21.8654 13.713C21.8654 22 19.9064 22 12.2794 22C4.65236 22 2.69336 22 2.69336 13.713Z" fill="#5B67CA"/><path d="M9.37207 16.1357H15.1871" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
            Dashboard
          </button>
        </Link>
        <Link
          id='courses'
          to="/dashboard/courses"
          className="text-black no-underline w-min sm:w-full"
        >
          <button className="p-8 flex gap-2 text-left hover:bg-gray-200 w-min sm:w-full indent-128 sm:indent-0">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M3.90356 12C3.90356 18.937 6.00156 21.25 12.2946 21.25C18.5886 21.25 20.6856 18.937 20.6856 12C20.6856 5.063 18.5886 2.75 12.2946 2.75C6.00156 2.75 3.90356 5.063 3.90356 12Z" stroke="#C6CEDD" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.8894 15.6963H8.66943" stroke="#C6CEDD" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.8894 11.9365H8.66943" stroke="#C6CEDD" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M11.4247 8.17725H8.66968" stroke="#C6CEDD" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg> 
            Courses
          </button>
        </Link>
        <Link
          id='settings'
          to="/dashboard/settings"
          className="text-black no-underline w-min sm:w-full"
        >
          <button className="p-8 flex gap-2 text-left hover:bg-gray-200 w-min sm:w-full indent-128 sm:indent-0">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M12.2935 9.5C13.6743 9.5 14.7935 10.6191 14.7935 12C14.7935 13.3809 13.6743 14.5 12.2935 14.5C10.9126 14.5 9.79346 13.3809 9.79346 12C9.79346 10.6191 10.9126 9.5 12.2935 9.5Z" stroke="#10275A" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path fill-rule="evenodd" clip-rule="evenodd" d="M20.4615 7.25025V7.25025C19.7779 6.05799 18.2647 5.65004 17.082 6.33852C16.0532 6.93613 14.7675 6.18838 14.7675 4.99218C14.7675 3.61619 13.6593 2.5 12.2932 2.5V2.5C10.9271 2.5 9.81892 3.61619 9.81892 4.99218C9.81892 6.18838 8.53322 6.93613 7.50545 6.33852C6.32175 5.65004 4.80853 6.05799 4.12498 7.25025C3.44242 8.4425 3.84745 9.96665 5.03115 10.6541C6.05892 11.2527 6.05892 12.7473 5.03115 13.3459C3.84745 14.0343 3.44242 15.5585 4.12498 16.7498C4.80853 17.942 6.32175 18.35 7.50447 17.6625H7.50545C8.53322 17.0639 9.81892 17.8116 9.81892 19.0078V19.0078C9.81892 20.3838 10.9271 21.5 12.2932 21.5V21.5C13.6593 21.5 14.7675 20.3838 14.7675 19.0078V19.0078C14.7675 17.8116 16.0532 17.0639 17.082 17.6625C18.2647 18.35 19.7779 17.942 20.4615 16.7498C21.145 15.5585 20.739 14.0343 19.5563 13.3459H19.5553C18.5275 12.7473 18.5275 11.2527 19.5563 10.6541C20.739 9.96665 21.145 8.4425 20.4615 7.25025Z" stroke="#10275A" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
            Settings
          </button>
        </Link>
      </ul>
    </div>
  )
}

export default Sidebar
