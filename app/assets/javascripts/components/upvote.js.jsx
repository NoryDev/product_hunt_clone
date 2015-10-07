// app/assets/javascripts/components/upvote.js.jsx
var Upvote = React.createClass({
  getInitialState: function() {
    return {
      product: this.props.product
    }
  },

  render: function() {
    var divClasses = classNames({
      "post-upvote": true,
      "post-upvote-upvoted": this.state.product.up_voted
    });

    return (
      <div className={divClasses} onClick={this.handleClick}>
        <div className="post-upvote-arrow"></div>
        <div className="post-upvote-count">
          {this.state.product.up_votes}
        </div>
      </div>
    );
  },

  handleClick: function() {
    var that = this;
    $.ajax({
      type: 'POST',
      url: Routes.upvote_product_path(this.props.product.id, { format: 'json' }),
      success: function(data) {
        that.setState({ product: data });
      }
    });
  }
});