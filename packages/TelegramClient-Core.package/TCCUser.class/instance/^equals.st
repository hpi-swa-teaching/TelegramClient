comparing
= aUser

	self species = aUser species
		ifTrue: [
			^ self firstName = aUser firstName
			and: [self lastName = aUser lastName]
			and: [self id = aUser id]
			and: [self username = aUser username]]
		ifFalse: [^ false]