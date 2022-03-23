// src/App.res

module ThemeContext = {
  type theme = Light | Dark
  let context = React.createContext(Light)

  module Provider = {
    let provider = React.Context.provider(context)

    @react.component
    let make = (~value, ~children) => {
      React.createElement(provider, {"value": value, "children": children})
    }
  }
}

module Button = {
  @react.component
  let make = (~theme) => {
    let onClick = _evt => {
      /* Js.String (data-last API used with pipe last operator) */
      Js.log("2019-11-10" |> Js.String.split("-"))
      Js.log("ReScript" |> Js.String.startsWith("Re"))

      /* Js.String (data-last API used with pipe first operator) */
      Js.log("2019-11-10"->Js.String.split("-", _))
      Js.log("ReScript"->Js.String.startsWith("Re", _))

      /* Js.String (data-last API used without any piping) */
      Js.log(Js.String.split("-", "2019-11-10"))
      Js.log(Js.String.startsWith("Re", "ReScript"))
    }

    let className = switch theme {
    | ThemeContext.Light => "btn btn-primary"
    | Dark => "btn btn-secondary"
    }
    <button className onClick> {React.string("Click me")} </button>
  }
}

module ThemedButton = {
  @react.component
  let make = () => {
    let theme = React.useContext(ThemeContext.context)

    <Button theme />
  }
}

module Toolbar = {
  @react.component
  let make = () => {
    <div> <ThemedButton /> </div>
  }
}

@react.component
let make = () => {
  <ThemeContext.Provider value=ThemeContext.Light> <div> <Toolbar /> </div> </ThemeContext.Provider>
}
