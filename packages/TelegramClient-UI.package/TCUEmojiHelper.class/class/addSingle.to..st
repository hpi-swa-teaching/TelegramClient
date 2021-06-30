unicode matching
addSingle: aCharacter to: aCollection
	
	(aCollection last species = OrderedCollection) ifTrue: [
		aCollection last add: aCharacter.
	] ifFalse: [
		aCollection add: (OrderedCollection new
			add: aCharacter;
			yourself).
	].
	^ aCollection