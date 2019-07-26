operations
shellFind: aPathString
	"Initiates a search starting from the specified directory."

	(self shellExecute: nil 
		lpOperation: 'find'
		lpFile: nil
		lpParameters: nil
		lpDirectory: aPathString
		nShowCmd: 1) <= 32 ifTrue: [self error: 'system error']