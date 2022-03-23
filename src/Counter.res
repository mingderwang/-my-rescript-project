// Counter.res
@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)

  let onClick = _evt => {
    setCount(prev => prev + 1)
  }

  <div>
    <Display count={count} />
    <button className="btn btn-primary" onClick> {React.string("Click me")} </button>
  </div>
}
