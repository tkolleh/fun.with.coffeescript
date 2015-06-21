(function() {
  var input, processData;

  processData = function(input) {
    var candidates, interview, interviewCandidate, npx, scores, topCandidate;
    input = input.split("\n");
    npx = input[0].split(" ");
    candidates = input[1].split(" ");
    interview = {
      n: npx[0],
      p: npx[1],
      x: npx[2]
    };
    interviewCandidate = function(c, i) {
      var ai, candidate;
      ai = (interview.p - (interview.x * i)) * c;
      return candidate = {
        score: ai,
        number: i + 1
      };
    };
    scores = [];
    topCandidate = {
      score: 0,
      number: 0
    };
    candidates.forEach(function(candidate, index) {
      return scores.push(interviewCandidate(candidate, index));
    });
    scores.forEach(function(candidate, index) {
      if (candidate.score > topCandidate.score) {
        return topCandidate = candidate;
      }
    });
    return console.log("" + topCandidate.number);
  };

  input = "4 94 8\n8 6 4 6";

  processData(input);

}).call(this);
