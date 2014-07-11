function returnsNoSpotsWithEmptyMap() {
  assertEqual(
    possibleLandingSpots(1, []),
    []);
}

function returnsTheOnlySpotForOneSquareMap() {
  assertEqual(
    possibleLandingSpots(1, ["."]),
    [[0, 0]]);
}

function returnsOnlyTheSpotsThatCanBeLandedOn() {
  assertEqual(
    possibleLandingSpots(1, ["#"]),
    []);
}

function returnsOnlySpotsThatAreBigEnoughToBeLandedOn() {
  assertEqual(
    possibleLandingSpots(2, ["#.#",
                             "..#",
                             "..."]),
                         [[1, 0]]);
}

// the tests will time out after 1s
function itRunsWithinReasonableTimeLimits() {
  var n = 1000;
  var row = ".".repeat(n);
  var map = [];
  n.times(function() { map.push(row); });
  assertEqual(
    possibleLandingSpots(n - 1, map),
    [[0, 0], [0, 1], [1, 0], [1, 1]]);
}
