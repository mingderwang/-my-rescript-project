open ReactDomExperimental

switch createRootWithId("root") {
| Some(root) => root->render(<React.StrictMode> <Counter /> </React.StrictMode>)
| None => ()
}
