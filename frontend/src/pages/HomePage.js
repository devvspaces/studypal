import React from 'react'
import styled from 'styled-components'
import { Link } from 'react-router-dom'

const Container = styled.div`
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100vh;
  align-items: center;
  justify-content: center;
`

const HomePage = () => {
  return (
    <Container>
      <h1>Home page</h1>
      <p>
        Click <Link to="/dashboard">here</Link> to go to the dashboard.
      </p>
    </Container>
  )
}

export default HomePage
