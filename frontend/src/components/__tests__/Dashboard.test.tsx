import { screen } from '@testing-library/react'
import { renderWithRouter } from '@utils/testUtils'
import { describe, expect, it } from 'vitest'

import Dashboard from '../Dashboard'

describe('<Dashboard />', () => {
  it('should render the Navbar component', () => {
    renderWithRouter(<Dashboard />)
    expect(screen.getByText('Studypal')).toBeInTheDocument()
  })

  it('should render the Sidebar component', () => {
    renderWithRouter(<Dashboard />)
    expect(screen.getByText('Dashboard')).toBeInTheDocument()
    expect(screen.getByText('Courses')).toBeInTheDocument()
    expect(screen.getByText('Settings')).toBeInTheDocument()
  })
})
