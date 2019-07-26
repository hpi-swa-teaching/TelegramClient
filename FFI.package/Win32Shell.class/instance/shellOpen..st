operations
shellOpen: aFileString
	"Opens the file specified by aFileString. The file can be an executable file, a document file, 
	 or a folder."

	(self shellExecute: nil 
		lpOperation: 'open'
		lpFile: aFileString
		lpParameters: nil
		lpDirectory: nil
		nShowCmd: 1) <= 32 ifTrue: [self error: 'system error']