## Brain Tickler - Practice problems 
processData = (input) ->
	input = input.split "\n"
	npx = input[0].split " "
	candidates = input[1].split " "
	interview =
		n: npx[0]
		p: npx[1]
		x: npx[2]

	interviewCandidate = (c, i) ->
		ai = (interview.p - (interview.x * i)) * c
		candidate = 
			score: ai
			number: (i + 1)

	scores = []
	topCandidate 
		score: 0
		number: 0

	candidates.forEach (candidate, index) ->
		scores.push interviewCandidate candidate, index

	scores.forEach (candidate, index) ->
		if candidate.score > topCandidate.score
			topCandidate = candidate

	console.log "#{topCandidate.number}"

input = "4 94 8\n8 6 4 6"
processData(input);




