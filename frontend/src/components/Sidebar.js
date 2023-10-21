import React from 'react'
import styled from 'styled-components'
import { Link } from 'react-router-dom'

const Container = styled.div`
  padding: 1em;
  display: flex;
  flex-direction: row;
  width: 200px;
  align-items: stretch;
  justify-content: stretch;
  border-right: 1px solid #ccc;
`

const SidebarList = styled.ul`
  display: flex;
  flex-direction: column;
  width: 200px;
  align-items: stretch;
  justify-content: stretch;

  list-style-type: none;
  margin: 0;
  padding: 0;

  li {
    padding: 0.5em;
    border-bottom: 1px solid #ccc;
    &:hover {
      background-color: #eee;
    }
  }
`

const StyledLink = styled(Link)`
  text-decoration: none;
  width: 100%;
  color: #000;
`

const Sidebar = () => {
  return (
    <Container>
      <SidebarList>
        <StyledLink to="/dashboard">
          <li>Dashboard</li>
        </StyledLink>
        <StyledLink to="/dashboard/courses">
          <li>Courses</li>
        </StyledLink>
        <StyledLink to="/dashboard/settings">
          <li>Settings</li>
        </StyledLink>
      </SidebarList>
    </Container>
  )
}

export default Sidebar
