import gleam/string
import gleam/list

pub fn message(log_line: String) -> String {
  let parts = string.split_once(log_line, on: ":")
  case parts {
    Ok(#(_, msg)) -> string.trim(msg)
    Error(_) -> log_line
  }
}

pub fn log_level(log_line: String) -> String {
  let parts = string.split_once(log_line, on: ":")
  case parts {
    Ok(#("[INFO]", _)) -> "info"
    Ok(#("[WARNING]", _)) -> "warning"
    Ok(#("[ERROR]", _)) -> "error"
    Error(_) -> log_line
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
