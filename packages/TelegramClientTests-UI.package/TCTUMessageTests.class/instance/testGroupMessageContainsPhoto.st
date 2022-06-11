testing
testGroupMessageContainsPhoto

	self wantsToTest: (TCUMessage newFrom: (TCTMMocks mockTextMessageWith: self core inChat: TCTMMocks mockBasicGroupChat)).
	0.1 seconds wait.
	self assert: true equals: (self subject morphs first submorphs anySatisfy: [:aMorph | aMorph isImageMorph])