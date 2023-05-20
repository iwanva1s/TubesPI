import React from 'react'
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
// import Navbar from './components/navbar';
import Navigation from './components/Navigation';
import Home  from './components/Home';
import Footer from './components/Footer';
import Regis  from './pages/regis';
import Login from './pages/login';
import Navbar from './components/Navbar';
import Home2 from './components/Home2';

// import './index.css';
import './App.css'

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  function App() {
    const token = localStorage.getItem('token');

    if(!token) {
      return (<Login />)
    }

  if (!token) {

    return (
      <div className="App">

      <Router>
        <Navigation />
        <Switch>
          <Route path="/" exact component={Home} />
          <Route path="/login" exact component={Login} />
          <Route path="/regis" exact component={Regis} />
        </Switch>
        <Footer />
      </Router>
      </div>     
    )
    }
      return (
      <div className="App">

      <Router>
        <Navbar />
        <Switch>
          <Route path="/" exact component={Home2} />
        </Switch>
      </Router>
      </div>     
    );
  }

  export default App;

