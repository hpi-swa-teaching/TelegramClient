accessing
allowsMultipleAnswers: aPollObject

	((aPollObject at: 'type') at: '@type') = 'pollTypeQuiz' ifTrue: [allowsMultipleAnswers := false] 
								    						ifFalse: [allowsMultipleAnswers := ((aPollObject at: 'type') at: 'allow_multiple_answers')]