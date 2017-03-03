var explore;

explore = function(obj) {
  var key, results;
  results = [];
  for (key in obj) {
    results.push(print(key));
  }
  return results;
};
