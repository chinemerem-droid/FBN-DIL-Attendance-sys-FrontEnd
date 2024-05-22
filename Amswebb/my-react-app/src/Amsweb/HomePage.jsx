import React, { useState } from "react";
import { CiSearch } from "react-icons/ci";
import data from "./mock-data.json";

const HomePage = () => {
	const [contacts, setContacts] = useState(data);

	return (
		<main className="main">
			
			<div className="table-container">
				<form className="searchbar">
					<input type="text" className="input" placeholder=" search" />
					<CiSearch id="search-icon" />
				</form>

				<table >
				<thead >
						<tr className="tableHead">
							<th className="cell">Name</th>
							<th className="cell">staff ID</th>
							<th className="cell">Check In</th>
							<th className="cell">Check Out</th>
							<th className="cell">Location</th>
						</tr>
					</thead>
					
					<tbody>
							{contacts.map((contact) => (
								<tr>
									<td className="cells-Name">{contact.Name}</td>
									<td className="cells-staffID">{contact.staffID}</td>
									<td className="cells-CheckIn">{contact.CheckIn}</td>
									<td className="cells-CheckOut">{contact.CheckOut}</td>
									<td className="cells-location">{contact.location}</td>
								</tr>
							))}
						</tbody>
				</table>
				{/* <div className="table-title">
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
					{
						<tbody>
							{contacts.map((contact) => (
								<tr>
									<td className="cells">{contact.Name}</td>
									<td className="cells">{contact.staffID}</td>
									<td className="cells">{contact.CheckIn}</td>
									<td className="cells">{contact.CheckOut}</td>
									<td className="cells">{contact.location}</td>
								</tr>
							))}
						</tbody>
					}
				</div> */}
			</div>
		</main>
	);
};

export default HomePage;
