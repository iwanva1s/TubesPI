import './App.css';
import Navbar from './components/Navbar';
import Navbar2 from './components/Navbar_after';
import Home from './components/Home';
import Home2 from './components/Home_after';
import Login from './pages/Login';
// import Regis from './pages/Regis';
import Search from './pages/Search';
import Detail from './pages/Detail';
import Peternakan from './pages/Peternakan';
import Hewan from './pages/Hewan';
import Produk from './pages/Produk';
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
          <Route path="/search" exact component={Search} />
          <Route path="/detail/:pid"  component={Detail} />
          <Route path="/login" component={Login}/>
          {/* <Route path="/regis"  component={Regis}/> */}
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
          <Route path="/" exact component={Home2} />
          <Route path="/detail/:pid"  component={Detail} />
          <Route path="/peternakan" exact component={Peternakan} />
          <Route path="/hewan" exact component={Hewan} />
          <Route path="/produk" exact component={Produk} />
        </Switch>
      </Router>
      {/* <Footer /> */}
      </div>     
    );
  }
  

export default App;
