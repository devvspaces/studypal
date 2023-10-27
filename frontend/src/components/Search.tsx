// import magnifierIcon from '@assets/magnifier.svg'
import searchIcon from '@assets/Search.svg'
import CloseIcon from '@assets/Close.svg'

function ClearSearch () {
  const searchbar = document.getElementById("searchbar") as HTMLInputElement | null

  if (searchbar) {
    searchbar.value = ""
  }

}

const Search = () => {
  return (
    <div className="flex flex-row">
      <button
        type="submit"
        className="flex z-10 border-0 rounded-r-lg p-2 items-center"
      >
        <img src={searchIcon} alt="search" className="w-4 h-4" />
      </button>
      <input
        type="text"
        placeholder="Search here..."
        className="border border-gray-300 border-r-0 rounded-l-lg py-2 px-10 focus:outline-none text-black"
        style={{ marginLeft: '-32px', backgroundColor: "transparent"}}
        id='searchbar'
      />
      <button
        type="button"
        className="flex border border-l-0 rounded-r-lg p-2 items-center"
        onClick={ClearSearch}
      >
        <img src={CloseIcon} alt="clear" className="w-4 h-4" />
      </button>
    </div>
  )
}

export default Search
