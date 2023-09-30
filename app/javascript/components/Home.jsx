import React from "react";
import { Link } from "react-router-dom";
import CardButtons from './CardButtons';

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">Rock Paper Scissors</h1>
        <p className="lead">
          Rock Paper Scissors is a zero sum game that is usually played by two people using their hands and no tools. The idea is to make shapes with an outstretched hand where each shape will have a certain degree of power and will lead to an outcome.
        </p>
        <hr className="my-4" />
        <p className="lead">
          Select your Bet
        </p>
        <CardButtons>
          S
        </CardButtons>
        <Link
          to="/recipes"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Recipes
        </Link>
      </div>
    </div>
  </div>
);
