import gleam/iterator.{type Iterator, filter, fold, map}

pub type Item {
  Item(name: String, price: Int, quantity: Int)
}

pub fn item_names(items: Iterator(Item)) -> Iterator(String) {
  map(items, fn(i) { i.name })
}

pub fn cheap(items: Iterator(Item)) -> Iterator(Item) {
  filter(items, fn(i) { i.price < 30 })
}

pub fn out_of_stock(items: Iterator(Item)) -> Iterator(Item) {
  filter(items, fn(i) { i.quantity == 0 })
}

pub fn total_stock(items: Iterator(Item)) -> Int {
  fold(over: items, from: 0, with: fn(acc, e) { acc + e.quantity })
}
