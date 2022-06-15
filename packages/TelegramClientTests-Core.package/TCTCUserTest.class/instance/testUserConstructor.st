testing
testUserConstructor

	| user |
	user := TCCUser newFrom: TCTMMocks mockUserEvent.

	self assert: TCTMMocks mockUser1 firstName equals: user firstName.
	self assert: TCTMMocks mockUser1 lastName equals: user lastName.
	self assert: TCTMMocks mockUser1 username equals: user username.
	self assert: TCTMMocks mockUser1 fullName equals: user fullName.
	self assert: TCTMMocks mockUser1 photoId equals: user photoId.
	self assert: true equals: user hasPhoto