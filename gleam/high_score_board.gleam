import gleam/map.{type Map}

pub type ScoreBoard =
  Map(String, Int)

pub fn create_score_board() -> ScoreBoard {
  map.from_list([#("The Best Ever", 1_000_000)])
}

pub fn add_player(
  score_board: ScoreBoard,
  player: String,
  score: Int,
) -> ScoreBoard {
  map.insert(score_board, player, score)
}

pub fn remove_player(score_board: ScoreBoard, player: String) -> ScoreBoard {
  map.delete(score_board, player)
}

pub fn update_score(
  score_board: ScoreBoard,
  player: String,
  points: Int,
) -> ScoreBoard {
  let current = map.get(score_board, player)
  case current {
    Ok(x) -> map.insert(score_board, player, x + points)
    _ -> score_board
  }
}

pub fn apply_monday_bonus(score_board: ScoreBoard) -> ScoreBoard {
  map.map_values(score_board, fn(k, v) { v + 100 })
}
