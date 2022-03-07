%%raw("import './main.css'")

@react.component
let make = (~active: bool) => {
  let activeClass = if active {
    "text-green-600"
  } else {
    "text-red-600"
  }

  <div className={`text-3xl font-bold underline ${activeClass}`}>
    {React.string("Hello World")}
  </div>
}
