import React from 'react'
import { render, screen } from '@testing-library/react'
import Search from '../Search'

describe('<Search />', () => {
  it('should render an input element with the appropriate placeholder', () => {
    render(<Search />)
    const inputElement = screen.getByPlaceholderText('Search here...')
    expect(inputElement).toBeInTheDocument()
  })

  it('should render a search button with an icon', () => {
    render(<Search />)
    const searchButton = screen.getByRole('button', { name: /search/i })
    expect(searchButton).toBeInTheDocument()

    const icon = screen.getByAltText('Search')
    expect(icon).toBeInTheDocument()
  })
})
