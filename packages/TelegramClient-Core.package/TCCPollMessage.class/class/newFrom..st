instance creation
newFrom: aJsonObject
	
	| options |
	
	options := ((aJsonObject at: 'poll') at: 'options').
	
	^ self new
		question: ((aJsonObject at: 'poll') at: 'question');
		options: (options collectWithIndex: [:option :index | TCCPollOption new
											text: (option at: 'text');
											isBeingChosen: (option at: 'is_being_chosen');
											isChosen: (option at: 'is_chosen');
											voterCount: (option at: 'voter_count');
											votePercentage: (option at: 'vote_percentage');
											ordinal: index - 1
								]);
		isAnonymous: ((aJsonObject at: 'poll') at: 'is_anonymous');
		pollType: (((aJsonObject at: 'poll') at: 'type') at: '@type');
		isClosed: ((aJsonObject at: 'poll') at: 'is_closed');
		allowsMultipleAnswers: (aJsonObject at: 'poll');
		yourself