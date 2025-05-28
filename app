import React from "react";
import { Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import Home from "./pages/Home";
import AcademicBlog from "./pages/AcademicBlog";
import PersonalBlog from "./pages/PersonalBlog";
import Contact from "./pages/Contact";
import BlogPost from "./components/BlogPost";

function App() {
  return (
    <div className="app">
      <Navbar />
      <div className="main-content">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/academic-blog" element={<AcademicBlog />} />
          <Route path="/academic-blog/:slug" element={<BlogPost type="academic" />} />
          <Route path="/personal-blog" element={<PersonalBlog />} />
          <Route path="/personal-blog/:slug" element={<BlogPost type="personal" />} />
          <Route path="/contact" element={<Contact />} />
        </Routes>
      </div>
    </div>
  );
}

export default App;
