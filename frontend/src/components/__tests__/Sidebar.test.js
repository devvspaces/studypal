import React from 'react'
import { render, screen } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import Sidebar from '../Sidebar'

const renderWithRouter = (ui, { route = '/' } = {}) => {
  window.history.pushState({}, 'Test page', route)
  return render(ui, { wrapper: MemoryRouter })
}

describe('<Sidebar />', () => {
  it('should render a link to the Dashboard', () => {
    renderWithRouter(<Sidebar />)
    const linkElement = screen.getByRole('link', { name: 'Dashboard' })
    expect(linkElement).toBeInTheDocument()
    expect(linkElement).toHaveAttribute('href', '/dashboard')
  })

  it('should render a link to the Courses', () => {
    renderWithRouter(<Sidebar />)
    const linkElement = screen.getByRole('link', { name: 'Courses' })
    expect(linkElement).toBeInTheDocument()
    expect(linkElement).toHaveAttribute('href', '/dashboard/courses')
  })

  it('should render a link to the Settings', () => {
    renderWithRouter(<Sidebar />)
    const linkElement = screen.getByRole('link', { name: 'Settings' })
    expect(linkElement).toBeInTheDocument()
    expect(linkElement).toHaveAttribute('href', '/dashboard/settings')
  })
})
