open ReactDomExperimental

switch createRootWithId("root") {
| Some(root) => root->render(<React.StrictMode> <Demo2 /> </React.StrictMode>)
| None => ()
}
