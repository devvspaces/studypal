import React from 'react'
import magnifierIcon from '../assets/magnifier.svg'

const Search = () => {
  return (
    <div className="flex flex-row">
      <input
        type="text"
        placeholder="Search here..."
        className="border border-gray-300 rounded-l-lg p-2 pl-4 focus:outline-none text-black"
      />
      <button
        type="submit"
        className="flex border border-blue-500 rounded-r-lg p-2 bg-blue-500 items-center"
      >
        <img src={magnifierIcon} alt="Search" className="w-4 h-4" />
      </button>
    </div>
  )
}

export default Search
