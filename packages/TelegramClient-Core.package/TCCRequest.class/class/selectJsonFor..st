as yet unclassified
selectJsonFor: aPollType

	^ aPollType caseOf: {
		['regular'] -> [(Dictionary newFrom: {'@type' -> 'pollTypeRegular'. 
		'allow_multiple_answers' -> false. })].
		['multiple'] -> [(Dictionary newFrom: {'@type' -> 'pollTypeRegular'. 
		'allow_multiple_answers' -> true. })].
		['quiz'] -> [(Dictionary newFrom: {'@type' -> 'pollTypeQuiz'. 'correct_option_id' -> 0. })]
	}