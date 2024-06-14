accessing
hasVoted: options

	|voted|
	voted := false.
	options do: [:option | ((option at: 'is_chosen') = true) ifTrue: [voted := true]].
	hasVoted := voted