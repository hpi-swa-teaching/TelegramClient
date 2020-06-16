tests
testCorrectClassPrefix

	self classes do: [:aClass |
		(aClass class category endsWith: 'Core')
			ifTrue: [self assert: (aClass class name startsWith: 'TCC')].

		(aClass class category endsWith: 'Tests')
			ifTrue: [self assert: (aClass class name startsWith: 'TCT')].

		(aClass class category endsWith: 'UI')
			ifTrue: [self assert: (aClass class name startsWith: 'TCU')]]