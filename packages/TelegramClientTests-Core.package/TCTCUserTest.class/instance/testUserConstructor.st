testing
testUserConstructor

	| user |
	user := TCCUser newFrom: TCTMMocks mockUserEvent.

	self assert: TCTMMocks mockUser firstName equals: user firstName.
	self assert: TCTMMocks mockUser lastName equals: user lastName.
	self assert: TCTMMocks mockUser username equals: user username.
	self assert: TCTMMocks mockUser fullName equals: user fullName.
