import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import { Router, Route, IndexRoute, Link, browserHistory } from 'react-router';
import App from './containers/App'
import regionComponent from './components/regionComponent'

$(function() {
  let goReact = document.getElementById('react-app')
  if (goReact) {
  ReactDOM.render(
    <Router history={browserHistory}>
      <Route path='/regions' component={App} />
    </Router>,
    goReact
    );
  }
});

// <Route path='/regions/:params' component={regionComponent}/>
