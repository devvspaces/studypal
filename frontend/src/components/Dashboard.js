import React from 'react'
import Navbar from './Navbar'
import styled from 'styled-components'
import Sidebar from './Sidebar'
import { Outlet } from 'react-router-dom'

const ContentContainer = styled.div`
  display: flex;
  flex-direction: row;
  flex: 1;
`

const Content = styled.div`
  padding: 1em;
  display: flex;
  flex-direction: row;
  width: 100%;
  height: 100vh;
  align-items: stretch;
  justify-content: stretch;
`

const Dashboard = () => {
  return (
    <>
      <Navbar appTitle="Studypal" />
      <ContentContainer>
        <Sidebar />
        <Content>
          <Outlet />
        </Content>
      </ContentContainer>
    </>
  )
}

export default Dashboard
