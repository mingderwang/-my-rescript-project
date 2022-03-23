

import * as Demo2 from "./Demo2.bs.js";
import * as React from "react";
import * as Caml_option from "rescript/lib/es6/caml_option.js";
import * as ReactDomExperimental from "./bindings/ReactDomExperimental.bs.js";

var root = ReactDomExperimental.createRootWithId("root");

if (root !== undefined) {
  Caml_option.valFromOption(root).render(React.createElement(React.StrictMode, {
            children: React.createElement(Demo2.make, {})
          }));
}

export {
  
}
/* root Not a pure module */
