unicode matching
addSingle: aHexString to: aCollection
	
	(aCollection isEmpty or: [aCollection last isCharacter]) ifTrue: [
		aCollection add: OrderedCollection new
	].
	aCollection last add: aHexString.
	^ aCollection