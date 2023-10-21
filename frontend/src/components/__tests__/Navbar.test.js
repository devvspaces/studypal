import React from 'react'
import { render, screen } from '@testing-library/react'
import { MemoryRouter } from 'react-router-dom'
import Navbar from '../Navbar'

const renderWithRouter = (ui, { route = '/' } = {}) => {
  window.history.pushState({}, 'Test page', route)
  return render(ui, { wrapper: MemoryRouter })
}

describe('<Navbar />', () => {
  const appTitle = 'TestApp'

  it('should render the app title and it should be a link', () => {
    renderWithRouter(<Navbar appTitle={appTitle} />)
    const titleElement = screen.getByText(appTitle)
    expect(titleElement).toBeInTheDocument()
  })

  it('should render the Search component', () => {
    renderWithRouter(<Navbar appTitle={appTitle} />)
    const inputElement = screen.getByPlaceholderText('Search here...')
    expect(inputElement).toBeInTheDocument()
  })
})
