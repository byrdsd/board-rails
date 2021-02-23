import React from "react"
import PropTypes from "prop-types"
class BoardIndex extends React.Component {
  render () {
    console.log*this.props.boards
    return (
      <React.Fragment>
        Boards: {this.props.boards[0].board.name}
        Posts: {this.props.boards[0].post_count}
      </React.Fragment>
    );
  }
}

BoardIndex.propTypes = {
  boards: PropTypes.array
};
export default BoardIndex
