class Report extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div>
        <p>Revenue: {this.props.report.revenue}</p>
        <p>Total Purchases: {this.props.report.totalPurchases}</p>
      </div>
    )
  }
}
