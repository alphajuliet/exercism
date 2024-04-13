import gleam/int

pub fn is_leap_year(year: Int) -> Bool {
  let y1 = year % 400
  let y2 = year % 100
  let y3 = year % 4 

  case year {
    year if y1 == 0 -> True
    year if y2 == 0 -> False
    year if y3 == 0 -> True
    _ -> False
  }
}
