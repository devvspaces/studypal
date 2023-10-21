import React from 'react'
import styled from 'styled-components'
import magnifierIcon from '../assets/magnifier.svg'

const Container = styled.div`
  display: flex;
  flex-direction: row;
`

const Input = styled.input`
  border: 1px solid #ccc;
  border-top-left-radius: 1.5em;
  border-bottom-left-radius: 1.5em;
  padding: 0.5em;
  padding-left: 1em;
  &:focus {
    outline: none;
  }
`

const SearchButton = styled.button`
  display: flex;
  border: 1px solid #02aef7;
  border-top-right-radius: 1.5em;
  border-bottom-right-radius: 1.5em;
  padding: 0 0.75em;
  background-color: #02aef7;
  align-items: center;
`

const Icon = styled.img`
  width: 1em;
  height: 1em;
`

const Search = () => {
  return (
    <Container>
      <Input type="text" placeholder="Search here..." />
      <SearchButton type="submit">
        <Icon src={magnifierIcon} alt="Search" />
      </SearchButton>
    </Container>
  )
}

export default Search
