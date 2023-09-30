import React from 'react';
import ThrowCard from './ThrowCard';

class CardButtons extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      resultMessage: null,
      isHidden: true,
      generatedThrow: null
    };
  }

  handleButtonClick = (value) => {
    fetch(`/generate?chosed_item=${value}`)
      .then((response) => {
        if (response.ok) {
          return response.json();
        } else {
          console.error('Request failed:', response.statusText);
          throw new Error('Request failed');
        }
      })
      .then((data) => {
        console.log("this is data", data);
        this.setState({ generatedThrow: data.generated_item })
        this.setState({ resultMessage: data.result, isHidden: false });
      })
      .catch((error) => {
        console.error('Request error:', error);
      });
  };

  render() {
    return (
      <div>
        <h1>Choose an Option</h1>
        <ThrowCard label="Rock" onClick={() => this.handleButtonClick('rock')} />
        <ThrowCard label="Paper" onClick={() => this.handleButtonClick('paper')} />
        <ThrowCard label="Scissors" onClick={() => this.handleButtonClick('scissors')} />

        <div id="result" style={{ display: this.state.isHidden ? 'none' : 'block' }}>
          <p>Computer chose {this.state.generatedThrow}</p>
          <p>{this.state.resultMessage}</p>
        </div>
      </div>
    );
  }
}

export default CardButtons;
