message - json
mockPollOptionsJson

	| options |
	options := Array new: 3.
	options at: 1 put: (self mockPollOptionJson: 'Option 1' isBeingChosen: false isChosen: true votePercentage: 50 voterCount: 2).
	options at: 2 put: (self mockPollOptionJson: 'Option 2' isBeingChosen: false isChosen: false votePercentage: 25 voterCount: 1).
	options at: 3 put: (self mockPollOptionJson: 'Option 3' isBeingChosen: false isChosen: false votePercentage: 25 voterCount: 1).
	
	^ options.