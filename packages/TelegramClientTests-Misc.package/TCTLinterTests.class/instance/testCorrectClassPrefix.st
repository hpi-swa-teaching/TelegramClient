tests
testCorrectClassPrefix

	self classes do: [:aClass |
		(aClass class category endsWith: 'Client-Core')
			ifTrue: [self assert: (aClass class name beginsWith: 'TCC')].

		(aClass class category endsWith: 'Client-UI')
			ifTrue: [self assert: (aClass class name beginsWith: 'TCU')].
			
		(aClass class category endsWith: 'Tests-Core')
			ifTrue: [self assert: (aClass class name beginsWith: 'TCTC')].
		
		(aClass class category endsWith: 'Tests-UI')
			ifTrue: [self assert: (aClass class name beginsWith: 'TCTU')]].