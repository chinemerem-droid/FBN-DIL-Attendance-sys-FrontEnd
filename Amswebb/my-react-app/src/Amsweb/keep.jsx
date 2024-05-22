import React, { useState } from "react";
import "bootstrap";
import "./HomePage.css";
import { IoIosArrowRoundBack } from "react-icons/io";
import { MdOutlineHome } from "react-icons/md";
import { MdOutlineNotifications } from "react-icons/md";
import { IoSettingsOutline } from "react-icons/io5";
import { MdOutlineHistory } from "react-icons/md";
import { CiLock } from "react-icons/ci";
import { NavLink } from "react-router-dom";
import { children } from "react";
import userIcon from "../images/user-icon.svg";
import { CiSearch } from "react-icons/ci";
import data from "./mock-data.json"
const HomePage = () => {
	const [contacts, setContacts] = useState(data);
	const [isOpen, setOpen] = useState(false);
	const toggle = () => isOpen;
const[openProfile, setOpenProfile] = useState(false);
	const menuItem = [
		{
			Path: "/home",
			// name: "Home",
			Icon: <MdOutlineHome className="nav-icon" />,
		},
		{
			Path: "/notification",
			// name: "Notification",
			Icon: <MdOutlineNotifications className="nav-icon" />,
		},
		{
			Path: "/managepeople",
			// name: "Manage people",
			Icon: <IoSettingsOutline className="nav-icon" />,
		},
		{
			Path: "/history",
			// name: "History",
			Icon: <MdOutlineHistory className="nav-icon" />,
		},
		{
			Path: "/managepassword",
			// name: "Manage password",
			Icon: <CiLock className="nav-icon" />,
		},
	];

	return (
		<>
		<div className="origial">
			<header className="header">
				<h3>AMS ADMIN PORTAL</h3>

				<div className="user-con">
					<div className="userinfo">
						<h4>John Doe</h4>
						<p>Administrator</p>
					</div>
					<div className="usericon">
						<img src={userIcon} alt="" />
					</div>
					<div className="userDropdown">
					<img src={userIcon} alt="" />
					<h4>John Doe</h4>
					<p>Super Administrator</p>
					</div>
				</div>
			</header>
			{/* <div className="maincontainer">
<h1>hiiii</h1>
			</div> */}

			<div className="container">
				<div className="sidebar">
					<div className="top-section">
						<div className="arrow">
							<IoIosArrowRoundBack onClick={toggle} />
						</div>
					</div>

					{menuItem.map((item, index) => (
						<NavLink
							to={item.Path}
							key={index}
							className="link"
							activeClassName="acive"
						>
							<div className="icon">{item.Icon}</div>
							<div className="link_text">{item.name}</div>
						</NavLink>
					))}
				</div>

				<main className="main">
					<h4>Monday,May 13,2024</h4>
					<div className="table">
						<form className="searchbar">
							<input type="text" className="input" placeholder=" search" />
							<CiSearch id="search-icon" />
							</form>
							<div className="table-title">
								<thead>
									<tr>
										<th className="cell">Name</th>
										<th className="cell">staff ID</th>
										<th className="cell">Check In</th>
										<th className="cell">Check Out</th>
										<th className="cell">Location</th>
									</tr>
								</thead>
							</div>
							 <div className="table-content">
								{<tbody>
									{contacts.map((contact)=><tr>
											<td className="cells">{contact.Name}</td>
											<td className="cells">{contact.staffID}</td>
											<td className="cells">{contact.CheckIn}</td>
											<td className="cells">{contact.CheckOut}</td>
											<td className="cells">{contact.Location}</td>

										</tr> )}
										
									</tbody> }
									</div> 
							
						
					</div>
				</main>
			</div>
			</div>
		</>
	);
}

export default HomePage;
