testing
testUserConstructor

	| user |
	user := TCCUser newFrom: TCTMocks mockUserEvent.
	
	self assert: TCTMocks mockUser firstName equals: user firstName. 
	self assert: TCTMocks mockUser lastName equals: user lastName. 
	self assert: TCTMocks mockUser username equals: user username. 
	self assert: TCTMocks mockUser fullName equals: user fullName. 
