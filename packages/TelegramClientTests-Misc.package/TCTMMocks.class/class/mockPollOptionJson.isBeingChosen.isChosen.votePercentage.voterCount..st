message - json
mockPollOptionJson: text isBeingChosen: beingChosen isChosen: chosen votePercentage: percentage voterCount: count
	
	^ (JsonObject newFrom: {
			'@type' -> 'pollOption'.
			'is_being_chosen' -> beingChosen.
			'is_chosen' -> chosen.
			'text' -> text.
			'vote_percentage' -> percentage.
			'voter_count' -> count.
		})