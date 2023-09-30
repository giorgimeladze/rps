import React from 'react';

class ThrowCard extends React.Component {
  render() {
    const { label, onClick } = this.props;

    return (
      <button onClick={onClick}>{label}</button>
    );
  }
}

export default ThrowCard;