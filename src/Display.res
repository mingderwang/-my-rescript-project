@react.component
let make = (~count: int) => {
  let times = switch count {
  | 0 => "none"
  | 1 => "once"
  | 2 => "twice"
  | n => Belt.Int.toString(n) ++ " times"
  }
  let msg = "You clicked " ++ times
  <> <button> {msg->React.string} </button> <p /> </>
}
