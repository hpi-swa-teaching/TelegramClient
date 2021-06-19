testing
testDidCreateFile

	self assert: (FileDirectory default isAFileNamed: TCTMMocks mockImagePath).