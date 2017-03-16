class Direction extends React.Component {
  render () {
    return (
      <div>
        <div>Origin: {this.props.origin}</div>
        <div>Destination: {this.props.destination}</div>
      </div>
    );
  }
}

Direction.propTypes = {
  origin: React.PropTypes.string,
  destination: React.PropTypes.string
};
