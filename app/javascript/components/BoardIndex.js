import React from "react"
import PropTypes from "prop-types"
class BoardIndex extends React.Component {
  render () {
    return (
      <React.Fragment>
        Boards: {this.props.boards[0].name}
        Posts: {this.props.boards[0].count}
      </React.Fragment>
    );
  }
}

BoardIndex.propTypes = {
  boards: PropTypes.array
};
export default BoardIndex
