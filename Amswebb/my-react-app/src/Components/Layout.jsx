import React, { useState } from "react";
// import "bootstrap";
 import { IoIosArrowRoundBack, IoIosArrowRoundForward } from "react-icons/io";
import { MdOutlineHome } from "react-icons/md";
import { MdOutlineNotifications } from "react-icons/md";
import { IoSettingsOutline } from "react-icons/io5";
import { MdOutlineHistory } from "react-icons/md";
import { CiLock } from "react-icons/ci";
import { NavLink, Outlet } from "react-router-dom";
import userIcon from "../images/user-icon.svg";
import { CiSearch } from "react-icons/ci";
import data from "../Amsweb/mock-data.json";
import { TbLogout } from "react-icons/tb";
import dateIcon from "../images/date.svg";
import { TbClockHour2 } from "react-icons/tb";
import "./Layout.css"


const Layout = () => {
	const [contacts, setContacts] = useState(data);
	const [isOpen, setOpen] = useState(false);
	const toggle = () => {
		setOpen(!isOpen);
	};
	const [openProfile, setOpenProfile] = useState(false);
	const menuItem = [
		{
			Path: "/home",
			name: "Home",
			Icon: <MdOutlineHome className="nav-icon" />,
		},
		{
			Path: "/notification",
			name: "Notification",
			Icon: <MdOutlineNotifications className="nav-icon" />,
		},
		{
			Path: "/managepeople",
			name: "Manage people",
			Icon: <IoSettingsOutline className="nav-icon" />,
		},
		{
			Path: "/history",
			name: "History",
			Icon: <MdOutlineHistory className="nav-icon" />,
		},
		{
			Path: "/managepassword",
			name: "Manage password",
			Icon: <CiLock className="nav-icon" />,
		},
	
	];
	return (
		<>
		<main className="main">
			<div className="origial">
				<header className="header">
					<p>
						<img src={dateIcon} alt="" className="dateIcon" /> Monday,May
						13,2024 <TbClockHour2 className="clockIcon" />08:34am
					</p>
					
					<div className="user-con">
						<div className="userinfo">
							<h4>John Doe</h4>
							<p>Administrator</p>
						</div>
						<div className="usericon">
							<img src={userIcon} alt="" />
						</div>
						 
						</div> 
						<div className="userDropdown">
							{}
					</div>
				</header>
			

				<div className="containerD">
					<div className={isOpen ? "sidebar" : "sidebar-closed"}>
						<div className="top-section">
							<div className="arrow">
								{isOpen ? (
									<>
										<span className="ams">AMS ADMIN PORTAL</span>
										<IoIosArrowRoundForward
											onClick={toggle}
											className="main-arrow"
										/>
									</>
								) : (
									<>
										<IoIosArrowRoundBack
											onClick={toggle}
											className="main-arrow"
										/>
									</>
								)}
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
								{isOpen && <div className="link_text">{item.name}</div>}
							</NavLink>

						))}
						<NavLink 
						to={"/"}
						className="logOutIcon"
						// activeClassName="acive"
						style={{display: "flex"}}
						>
							<div className="icon"><TbLogout className="" /></div>
								{isOpen && <div className="link_text">Log Out</div>}
						</NavLink>

					</div>
					<div className="outlet-container">
						<Outlet />
					</div>
				</div>
			</div>
			</main>
		</>
	);
};

export default Layout;
