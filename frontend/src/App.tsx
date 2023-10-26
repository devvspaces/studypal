import Dashboard from '@components/Dashboard'
import CoursesPage from '@pages/CoursesPage'
import DashboardPage from '@pages/DashboardPage'
import HomePage from '@pages/HomePage'
import SettingsPage from '@pages/SettingsPage'
import { BrowserRouter, Route, Routes } from 'react-router-dom'

const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/dashboard" element={<Dashboard />}>
          <Route path="" element={<DashboardPage />} />
          <Route path="courses" element={<CoursesPage />} />
          <Route path="settings" element={<SettingsPage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  )
}

export default App
