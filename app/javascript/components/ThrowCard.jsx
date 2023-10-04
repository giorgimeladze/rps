import React from 'react';

class ThrowCard extends React.Component {
  render() {
    const { label, imageUrl, onClick } = this.props;

    return (
      <input
        type="button"
        className="card-button"
        onClick={onClick}
        style={{ backgroundImage: `url(${imageUrl})`, 
                backgroundSize: 'cover',
                backgroundPosition: 'center', 
                top: '467px',
                left: '306px',
                width: '240px',
                height: '273px'
              }}
        value={label}
      />
    );
  }
}

export default ThrowCard;