import React from 'react'
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import NavbarAwal from './components/NavbarAwal';
import Navbar2 from './components/NavbarAfterLogin';
import Home  from './pages/Home';
import Regis  from './pages/Regis';
import Login from './pages/Login';
// import User from './user/user';
// import Search from './pages/Search';
// import Footer from './components/Footer';
import './App.css'

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  function App() {
    
  // const token = sessionStorage.getItem('token');
  // console.log(token);


  // if (!token) {

    return (
      <div className="App">

      <Router>
        <NavbarAwal />
        <Switch>
          <Route path="/" exact component={Home} />
          <Route path="/login" exact component={Login} />
          <Route path="/regis" exact component={Regis} />
        </Switch>
        {/* <Footer /> */}
      </Router>
      </div>     
    )
    // }

    //   return (
    //   <div className="App">

    //   <Router>
    //     <Navbar2 />
    //     <Switch>
    //       <Route path="/" exact component={Home} />
    //       <Route path="/search" exact component={Search} />
    //     </Switch>
    //   </Router>
    //   </div>     
    // );
  }
    

  export default App;

