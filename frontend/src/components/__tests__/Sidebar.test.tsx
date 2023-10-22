import { screen } from '@testing-library/react'
import { renderWithRouter } from '@utils/testUtils'
import { describe, expect, it } from 'vitest'

import Sidebar from '../Sidebar'

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
