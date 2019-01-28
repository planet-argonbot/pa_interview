class UserShow extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      title: this.props.title || '',
      content: this.props.content|| ''
    }

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault()

    $.ajax({
      url: '/todos',
      dataType: 'json',
      type: 'POST',
      data: this.state,
      success: (data) => {  },
      error: (data) => {  }
    });
  }


  render() {
    user = this.props.user;
    return(
      <div>
        <div>
          <p>
            Welcome! {user.name}
          </p>
        </div>
        <div>
          <h3>
            Top 5 Todos:
          </h3>
          <ul>
            <li>
              <p>Title: Todo 1</p>
              <p>Completed: false</p>
            </li>
            <li>
              <p>Title: Todo 2</p>
              <p>Completed: true</p>
            </li>
            <li>
              <p>Title: Todo 3</p>
              <p>Completed: false</p>
            </li>
            <li>
              <p>Title: Todo 4</p>
              <p>Completed: false</p>
            </li>
            <li>
              <p>Title: Todo 5</p>
              <p>Completed: false</p>
            </li>
          </ul>
          <button onClick={this.handleSubmit}>Fetch Todos!</button>
        </div>
      </div>
    );
  }
}

