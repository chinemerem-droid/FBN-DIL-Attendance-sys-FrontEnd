import React, { useState } from "react";
import "./LoginPage.css"
import LoginIcon from "../images/login.svg";
import ContentIcon from "../images/Content.svg";
import FrameIcon from "../images/Frame.svg";
import {FaEye, FaEyeSlash} from "react-icons/fa"


import { useNavigate } from "react-router-dom";

function LoginPage() {
	const navigate = useNavigate();
	const [showPassword, setShowPassword] = useState(false);
	return (
		<>
			<div className="container">
			<div className="container2">
					<img src={LoginIcon} alt="" />
				</div>
				<div className="container1">
					<h1>Welcome</h1>
					<p>AMS Administrator portal</p>
					<div className="inputs">
						<div className="image-div">
							<img src={ContentIcon} alt="" className="iconforlogin" />
						</div>
						<div className="input-div">
							<input type="text" placeholder="Username" />
						</div>
					</div>
					<div className="inputs">
						<div className="image-div">
							<img src={FrameIcon} alt="" className="iconforlogin" />
						</div>
						<div className="input-div">
							<input type={showPassword ? "tel" : "password"} placeholder="Password" />
							{
								showPassword ? (< FaEye className="hiddenPassword" onClick={() => setShowPassword(!showPassword)} />) :(< FaEyeSlash className="hiddenPassword" onClick={() => setShowPassword(!showPassword)} />)
							}
							
							
						</div>
					</div>
					
					<div className="button-con">
						<button onClick={() => navigate("home")}>Login</button>
					</div>
				</div>
				
			</div>
		</>
	);
}

export default LoginPage;
