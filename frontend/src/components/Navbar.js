import React from 'react'
import styled from 'styled-components'
import Search from './Search'
import { Link } from 'react-router-dom'

const Container = styled.header`
  display: flex;
  flex-direction: row;
  width: 100%;
  align-items: center;
  justify-content: space-between;
  background-color: #000;
  color: #fff;
  padding: 1.5em;
`

const Title = styled.h1`
  margin: 0;
`

const StyledLink = styled(Link)`
  text-decoration: none;
  color: #fff;
`

const Navbar = ({ appTitle }) => {
  return (
    <Container>
      <StyledLink to="/">
        <Title>{appTitle}</Title>
      </StyledLink>
      <Search />
    </Container>
  )
}

export default Navbar
