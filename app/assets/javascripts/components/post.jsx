class Post extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      post: this.props.post,
      reports: [{id: 1, views: 100, clicks: 50}],

    }
    this.saveReport = this.saveReport.bind(this);
    this.updateReports = this.updateReports.bind(this);
  }

  saveReport() {
    $.ajax({
      url: '/reports',
      dataType: 'json',
      type: 'POST',
      data: { reports: { post_id: this.state.post.id } },
      success: (data) => {  this.updateReports(data.report) },
      error: (data) => {  }
    });
  }

  updateReports(report) {
    reports = this.state.reports.concat(report);
    this.setState({reports: reports});
  }

  render() {
    return(
      <div>
        <h1>
          {this.state.post.title}
        </h1>
        <div>
          {this.state.reports.map(report => (
            <Report report={ report } key={report.id}/>
          ))}
        </div>
        <div>
          <a href="#" onClick={this.saveReport}>Save</a>
        </div>
      </div>

    );
  }
}

