import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import * as SessionAPIUtil from './util/session_api_util';
import configureStore from './store/store';

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();
  window.logout = SessionAPIUtil.logout;
  window.store = configureStore();
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
});
