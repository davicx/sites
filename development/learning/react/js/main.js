class Toggle extends React.Component {
  constructor(props) {
    super(props);
    this.state = {isToggleOn: true};

    // This binding is necessary to make `this` work in the callback
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    this.setState(prevState => ({
      isToggleOn: !prevState.isToggleOn
    }));
  }

  render() {
    var current_state = this.state.isToggleOn;
    
    if(current_state !== undefined && current_state !== null) { 
      console.log(current_state);
    } else {
      console.log("undefined");
    }
  
    
    return (
      <button onClick={this.handleClick}>
        {this.state.isToggleOn ? 'AIR' : 'LAND'}
      </button>
    );
  }
}

ReactDOM.render(
  <Toggle />,
  document.getElementById('root')
);
