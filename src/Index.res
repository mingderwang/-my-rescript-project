open ReactDomExperimental

switch createRootWithId("root") {
| Some(root) => root->render(<React.StrictMode> <App active=false /> </React.StrictMode>)
| None => ()
}
