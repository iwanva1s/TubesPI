import './App.css';
import Navbar from './components/Navbar';
import Navbar2 from './components/Navbar_after';
import Home from './pages/Home';
import User from './pages/User';
import Login from './pages/Login';
import Regis from './pages/Regis';
import Search from './pages/Search';
import Footer from './components/Footer';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";


function App() {
  const token = sessionStorage.getItem('token');
  console.log(token);

  if (!token) {

  return (
    <div className="App">
            <Router>
        <Navbar />
        <Switch>
          <Route path="/" exact component={Home}/>
          <Route path="/login" exact component={Login}/>
          <Route path="/regis" exact component={Regis}/>
        </Switch>
        <Footer />
      </Router>

    </div>
  
    );
  }
  return (
      <div className="App">

      <Router>
        <Navbar2 />
        <Switch>
          <Route path="/user" exact component={User} />
          <Route path="/search" exact component={Search} />
          <Route path="/login" exact component={Login} />
        </Switch>
      </Router>
      <Footer />
      </div>     
    );


}

export default App;
