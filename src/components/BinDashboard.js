import React, { useEffect, useState } from 'react';
import axios from 'axios';
import './BinDashboard.css';

const BinDashboard = () => {
    const [bins, setBins] = useState([]);

    // Fetch bin data from backend
    useEffect(() => {
        axios.get('http://localhost:5000/api/bins')
            .then(response => {
                setBins(response.data);
            })
            .catch(error => console.error('Error fetching data:', error));
    }, []);

    return (
        <div className="dashboard">
            <h1>Bin Dashboard</h1>
            <table className="dashboard-table">
                <thead>
                    <tr>
                        <th>BIN ID</th>
                        <th>NAME</th>
                        <th>DESCRIPTION</th>
                        <th>CURRENT LOCATION</th>
                        <th>STATUS</th>
                    </tr>
                </thead>
                <tbody>
                    {bins.map(bin => (
                        <tr key={bin.ID}>
                            <td>{bin.BIN_ID}</td>
                            <td>{bin.NAME}</td>
                            <td>{bin.DESCRIPTION}</td>
                            <td>{bin.BIN_CURRENT_LOCATION}</td>
                            <td>{bin.BIN_STATUS}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default BinDashboard;
