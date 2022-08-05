testing
testGroupMessageContainsPhoto

	| message |
	message := TCUMessage newFrom: (TCTMMocks mockTextMessageWith: self core inChat: TCTMMocks mockBasicGroupChat).
	self wantsToTest: (TCUUserMessageWrapper newFromMessage: message withWidth: 500).
	0.1 seconds wait.
	self assert: (self subject morphs first submorphs anySatisfy: [:aMorph | aMorph isImageMorph]).