/**
 * Returns all the possible landing spots for a square vessel of size n
 *
 * @param {Number} n - the size of the vessel
 * @param {Array} map - array of strings representing a map, each string is of the same length
 *
 * @returns {Array} - an array of [row, column] coordinates of spots where a vessel could land
 */

function isAvailableForLanding(n, map, r, c) {
  var place = [];

  for(rr = r; rr < r + n; rr++) {
    place.push(map[rr].substring(c, c + n));
  }

  return (place.join('') == '.'.repeat( n * n ));
}

function possibleLandingSpots(n, map) {
  var solutions = [];

  if(map.length < n) { return solutions; }
  if(map[0].length < n) { return solutions; }

  for(r = 0; r <= map.length - n; r++) {
    for(c = 0; c <= map[0].length - n; c++) {
      if( isAvailableForLanding(n, map, r, c) ) {
        solutions.push([r,c]);
      }
    }
  }

  return solutions;
}
