import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import LoginPage from './Amsweb/LoginPage';
import Home from './Amsweb/HomePage';
import Managepeople from './Amsweb/managepeople';
import History from './Amsweb/history';
import Managepassword from './Amsweb/managepassword';
import Notification from './Amsweb/notification';
import Layout from './Amsweb/Layout';

function App() {
  return (
    <Router>
      {/* <Sidebar> */}
      <Routes>
        <Route path="/" element={<LoginPage />} />
        {/* <Route path="/home" element={<Home />} /> */}
        <Route path="/notification" element={<Notification />} />
        <Route path="/managepeople" element={<Managepeople />} />
        <Route path="/history" element={<History />} />
        <Route path="/managepassword" element={<Managepassword />} />
        <Route path="" element={<Layout />}>
          <Route path='home' element={<Home />} />
        </Route>
      </Routes>
      {/* </Sidebar> */}
    </Router>

  );
}

export default App;
