class Post extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      title: this.props.title || '',
      content: this.props.content|| ''
    }

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.createdPost = this.createdPost.bind(this);
  }

  handleSubmit() {
    $.ajax({
      url: '/posts',
      dataType: 'json',
      type: 'POST',
      data: this.state,
      complete: () => {  this.createdPost() },
      error: (data) => {  }
    });
  }

  handleChange(event) {
    this.setState({ [event.target.name]: event.target.value });
  }

  createdPost() {
    window.location.replace(
      "/posts"
    )
  }

  render() {
    return(
      <form onSubmit={this.handleSubmit}>
        <p>
          <label>
            Title:
            <input type="text" value={this.state.title} onChange={this.handleChange} name="title" />
          </label>
        </p>
        <p>
          <label>
            Content:
            <input type="text" value={this.state.content} onChange={this.handleChange} name="content" />
          </label>
        </p>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}
