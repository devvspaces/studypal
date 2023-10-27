import { Link } from 'react-router-dom'

const HomePage = () => {
  return (
    <div className="text-3xl flex flex-col w-full h-screen items-center justify-center">
      <h1>Home page</h1>
      <p>
        Click{' '}
        <Link className="text-blue-700" to="/dashboard">
          here
        </Link>{' '}
        to go to the dashboard.
      </p>
    </div>
  )
}

export default HomePage
