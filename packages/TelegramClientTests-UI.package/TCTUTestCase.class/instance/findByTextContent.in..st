navigating
findByTextContent: aString in: aMorphWrapper

	^ aMorphWrapper findByCriteria: [ :morph |
		(morph respondsTo: #text) and: [morph text asString includesSubstring: aString]]