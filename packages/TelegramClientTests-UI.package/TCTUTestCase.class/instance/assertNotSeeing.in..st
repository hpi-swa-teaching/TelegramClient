asserting
assertNotSeeing: aMorphClassName in: aSuperMorph

	self
		deny: (self seeing: aMorphClassName in: aSuperMorph)
		description: 'Morph ' , aMorphClassName asString , ' found in ' , aSuperMorph class asString.