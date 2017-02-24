import React from 'react';
import { Link } from 'react-router';
import AppButtons from './app_buttons';

const App = (props) => (
  <div className="app-container">

    <div className="navbar-container">
      <nav className="navbar">
        <div className="navbar-buttons-container">
          <Link className="navbar-button" to="/groups/new">Start a Group</Link>
        </div>
        <div className="navbar-logo-container">
          <a href="#"><img className="navbar-logo" src={window.logo} alt="Huddle" /></a>
        </div>

        <AppButtons />
      </nav>
    </div>

    <div className="children-container">
      { props.children }
    </div>

    <div className="footer">
      <ul className="list">
        <li>Home</li>
        <li>About Me</li>
        <li>Github</li>
        <li>LinkedIn</li>
      </ul>
    </div>
  </div>
);

export default App;
