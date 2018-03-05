class Report extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div>
        <p>Views: {this.props.report.views}</p>
        <p>Clicks: {this.props.report.clicks}</p>
      </div>
    )
  }
}
