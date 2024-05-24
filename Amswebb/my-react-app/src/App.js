import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import LoginPage from './Amsweb/LoginPage';
import Managepeople from './Amsweb/managepeople';
import History from './Amsweb/history';
import Managepassword from './Amsweb/managepassword';
import Notification from './Amsweb/notification';
import Layout from './Components/Layout';
import HomePage from './Amsweb/HomePage';

function App() {
  return (
    <>
    <Router>

      {/* <Sidebar> */}
      <Routes>
        <Route path="/" element={<LoginPage />} />

        <Route path="" element={<Layout />}>
          <Route path='home' element={<HomePage />} />
          <Route path="/managepassword" element={<Managepassword />} />
          <Route path="/notification" element={<Notification />} />
          <Route path="/managepeople" element={<Managepeople />} />
          <Route path="/history" element={<History />} />
        </Route>
      </Routes>
      {/* </Sidebar> */}
    </Router>
    </>

  );
}

export default App;
