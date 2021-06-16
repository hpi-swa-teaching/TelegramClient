asserting
assertSeeing: aMorphClassName in: aSuperMorph

	self
		assert: (self seeing: aMorphClassName in: aSuperMorph)
		description: 'No Morph ' , aMorphClassName asString , ' found in ' , aSuperMorph class asString.