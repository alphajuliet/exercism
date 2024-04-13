import gleam/int

pub fn convert(number: Int) -> String {
  let n3 = number % 3 == 0
  let n5 = number % 5 == 0
  let n7 = number % 7 == 0
  case n3, n5, n7 {
    False, False, False -> int.to_string(number)
    True, False, False -> "Pling" 
    False, True, False -> "Plang"
    True, True, False -> "PlingPlang"
    False, False, True -> "Plong"
    True, False, True -> "PlingPlong"
    False, True, True -> "PlangPlong"
    True, True, True -> "PlingPlangPlong"
  }
}
