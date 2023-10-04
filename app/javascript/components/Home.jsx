import React from "react";
import { Link } from "react-router-dom";
import CardButtons from './CardButtons';

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container">
        <div className="text-container">
          <h1 className="display-4 header-alignment">ROCK - PAPER - SCISSORS</h1>
          <p className="lead center-align">
            Rock Paper Scissors is a zero-sum game that is usually played by two people using their hands and no tools. The idea is to make shapes with an outstretched hand where each shape will have a certain degree of power and will lead to an outcome.
          </p>
        </div>
      </div>
      <h3 className="lead center-align">Select your Bet</h3>
      <CardButtons>
      </CardButtons>
    </div>
  </div>
);
