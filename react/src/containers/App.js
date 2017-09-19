import React, { Component } from 'react';
import { browserHistory, Link } from 'react-router'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      regions: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/data')
    .then(response => response.json())
    .then(body => {
      let allRegions = body.data
      this.setState({ regions: allRegions })
    })
  }
  render() {
  let regionLinks = this.state.regions.map(region => {

    return(
      <Link to={`/regions/${region}`}/>
    )
  })

    return(
      <div>
      {regionLinks}
      Hi
      </div>
    );
  }
}
export default App


// fetch("https://anapioficeandfire.com/api/houses?region=dorne&pageSize=100")
// .then(response => response.json())
// .then(body => {
//   debugger
//   this.setState({ houses: body })
// })
