import gleam/list

pub fn place_location_to_treasure_location(
  place_location: #(String, Int),
) -> #(Int, String) {
  #(place_location.1, place_location.0)
}

pub fn treasure_location_matches_place_location(
  place_location: #(String, Int),
  treasure_location: #(Int, String),
) -> Bool {
  let x = place_location_to_treasure_location(place_location)
  x == treasure_location
}

pub fn count_place_treasures(
  place: #(String, #(String, Int)),
  treasures: List(#(String, #(Int, String))),
) -> Int {
  let #(_, coord) = place
  list.filter(treasures, fn(t) {
    place_location_to_treasure_location(coord) == t.1
  })
  |> list.length
}

// Implement the special_case_swap_possible function, which takes a treasure (such as #("Amethyst Octopus", #(1, "F"))) and a Place (such as #("Seaside Cottages", #("C", 1))), and returns True for the following combinations:
// * The Brass Spyglass can be swapped for any other treasure at the Abandoned Lighthouse.
// * The Amethyst Octopus can be swapped for the Crystal Crab or the Glass Starfish at the Stormy Breakwater.
// * The Vintage Pirate Hat can be swapped for the Model Ship in Large Bottle or the Antique Glass Fishnet Float at the Harbor Managers Office.
pub fn special_case_swap_possible(
  found_treasure: #(String, #(Int, String)),
  place: #(String, #(String, Int)),
  desired_treasure: #(String, #(Int, String)),
) -> Bool {
  case place {
    #("Abandoned Lighthouse", _locn) if found_treasure.0 == "Brass Spyglass" ->
      True
    #("Stormy Breakwater", _locn) if found_treasure.0 == "Amethyst Octopus" && desired_treasure.0 == "Crystal Crab" || desired_treasure.0 == "Glass Starfish" ->
      True
    #("Harbor Managers Office", _locn) if found_treasure.0 == "Vintage Pirate Hat" && desired_treasure.0 == "Model Ship in Large Bottle" || desired_treasure.0 == "Antique Glass Fishnet Float" ->
      True
    _ -> False
  }
}
