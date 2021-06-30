unicode matching
addSingle: aHexString to: aCollection
	
	(aCollection notEmpty and: [aCollection last species = OrderedCollection]) ifTrue: [
		aCollection last add: aHexString.
	] ifFalse: [
		aCollection add: (OrderedCollection new
			add: aHexString;
			yourself).
	].
	^ aCollection