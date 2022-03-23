

import * as React from "react";

var context = React.createContext(/* Light */0);

var provider = context.Provider;

function App$ThemeContext$Provider(Props) {
  var value = Props.value;
  var children = Props.children;
  return React.createElement(provider, {
              value: value,
              children: children
            });
}

var Provider = {
  provider: provider,
  make: App$ThemeContext$Provider
};

var ThemeContext = {
  context: context,
  Provider: Provider
};

function App$Button(Props) {
  var theme = Props.theme;
  var onClick = function (_evt) {
    console.log("2019-11-10".split("-"));
    console.log("ReScript".startsWith("Re"));
    console.log("2019-11-10".split("-"));
    console.log("ReScript".startsWith("Re"));
    console.log("2019-11-10".split("-"));
    console.log("ReScript".startsWith("Re"));
    
  };
  var className = theme ? "btn btn-secondary" : "btn btn-primary";
  return React.createElement("button", {
              className: className,
              onClick: onClick
            }, "Click me");
}

var Button = {
  make: App$Button
};

function App$ThemedButton(Props) {
  var theme = React.useContext(context);
  return React.createElement(App$Button, {
              theme: theme
            });
}

var ThemedButton = {
  make: App$ThemedButton
};

function App$Toolbar(Props) {
  return React.createElement("div", undefined, React.createElement(App$ThemedButton, {}));
}

var Toolbar = {
  make: App$Toolbar
};

function App(Props) {
  return React.createElement(App$ThemeContext$Provider, {
              value: /* Light */0,
              children: React.createElement("div", undefined, React.createElement(App$Toolbar, {}))
            });
}

var make = App;

export {
  ThemeContext ,
  Button ,
  ThemedButton ,
  Toolbar ,
  make ,
  
}
/* context Not a pure module */
