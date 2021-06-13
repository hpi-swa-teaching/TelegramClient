comparing
= aUser

	^ self species = aUser species
		and: [self firstName = aUser firstName]
		and: [self lastName = aUser lastName]
		and: [self id = aUser id]
		and: [self username = aUser username]