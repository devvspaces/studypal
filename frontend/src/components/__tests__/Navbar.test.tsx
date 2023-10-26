import { screen } from '@testing-library/react'
import { renderWithRouter } from '@utils/testUtils'
import { describe, expect, it } from 'vitest'

import Navbar from '../Navbar'

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
