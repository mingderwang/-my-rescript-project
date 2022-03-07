

import * as React from "react";

import './main.css'
;

function App(Props) {
  var active = Props.active;
  var activeClass = active ? "text-green-600" : "text-red-600";
  return React.createElement("div", {
              className: "text-3xl font-bold underline " + activeClass
            }, "Hello World", React.createElement("button", {
                  className: "btn btn-info"
                }, "Info"));
}

var make = App;

export {
  make ,
  
}
/*  Not a pure module */
