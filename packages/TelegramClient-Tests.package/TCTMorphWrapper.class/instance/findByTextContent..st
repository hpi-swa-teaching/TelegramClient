navigating
findByTextContent: aString

	^ self findByCriteria: [ :morph |
		(morph respondsTo: #text) and: [morph text asString includesSubstring: aString]]