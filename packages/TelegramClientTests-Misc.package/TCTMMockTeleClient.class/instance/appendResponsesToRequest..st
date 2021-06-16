event handling
appendResponsesToRequest: aRequest

	| responses |

	responses := self requestResponses at: (aRequest at: '@type') ifAbsent: [{}].
	(aRequest includesKey: '@extra') ifTrue: [self addExtraAttribute: (aRequest at: '@extra') to: responses].
	self responseQueue addAll: responses.