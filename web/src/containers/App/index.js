import React, { Component } from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Home from '../Home';
import NotFound from '../../components/NotFound';

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div>
          <Route exactly pattern="/" component={Home} />
          <Switch component={NotFound} />
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
