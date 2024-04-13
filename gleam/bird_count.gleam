import gleam/int

pub fn today(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [x, ..] -> x
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days {
    [] -> [1]
    [x, ..xs] -> [x + 1, ..xs]
  }
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  case days {
    [] -> False
    [0] -> True
    [0, _] -> True
    [_, ..xs] -> has_day_without_birds(xs)
  }
}

pub fn total(days: List(Int)) -> Int {
  int.sum(days)
}

pub fn busy_days(days: List(Int)) -> Int {
  case days {
    [] -> 0
    [x, ..xs] if x >= 5 -> 1 + busy_days(xs)
    [_, ..xs] -> busy_days(xs)
  }
}
