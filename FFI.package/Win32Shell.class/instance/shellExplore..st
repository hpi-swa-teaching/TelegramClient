operations
shellExplore: aPathString
	"Explores the folder specified by aPathString"

	(self shellExecute: nil 
		lpOperation: 'explore'
		lpFile: aPathString
		lpParameters: nil
		lpDirectory: nil
		nShowCmd: 1) <= 32 ifTrue: [self error: 'system error']