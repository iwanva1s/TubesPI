import './App.css';
import Navbar from './components/Navbar';
import Navbar2 from './components/Navbar_after';
import Home from './pages/Home';
// import About from './pages/About';
// import User from './pages/User';
import Login from './pages/Login';
import Regis from './pages/Regis';
import Search from './pages/Search';
import Peternakan from './pages/Peternakan';
import Hewan from './pages/Hewan';
import Detail from './pages/Detail';
import Footer from './components/Footer';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

function App() {
  const token = localStorage.getItem('token');
  console.log(token);


  if (!token) {

  return (
    <div className="App">
            <Router>
        <Navbar />
        <Switch>
          <Route path="/" exact component={Home}/>
          <Route path="/login" component={Login}/>
          <Route path="/regis"  component={Regis}/>
        </Switch>
        {/* <About /> */}
        {/* <Footer /> */}
      </Router>

    </div>
  
    );
  }

  return (
      <div className="App">

      <Router>
        <Navbar2 />
        <Switch>
          <Route path="/" exact component={Home} />
          <Route path="/peternakan"  component={Peternakan} />
          <Route path="/detail/:pid"  component={Detail} />
          <Route path="/hewan"  component={Hewan} />
          <Route path="/search"  component={Search} />
          <Route path="/login"  component={Login} />
        </Switch>
      </Router>
      {/* <Footer /> */}
      </div>     
    );
  }
  

export default App;
