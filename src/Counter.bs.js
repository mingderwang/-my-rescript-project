

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Display from "./Display.bs.js";

function Counter(Props) {
  var match = React.useState(function () {
        return 0;
      });
  var setCount = match[1];
  var onClick = function (_evt) {
    return Curry._1(setCount, (function (prev) {
                  return prev + 1 | 0;
                }));
  };
  return React.createElement("div", undefined, React.createElement(Display.make, {
                  count: match[0]
                }), React.createElement("button", {
                  className: "btn btn-primary",
                  onClick: onClick
                }, "Click me"));
}

var make = Counter;

export {
  make ,
  
}
/* react Not a pure module */
