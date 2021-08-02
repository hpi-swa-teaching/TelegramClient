as yet unclassified
fileSet

	| directory |
	Transcript showln: 'Resource Ensure Logged in Begin'.
	directory := FileDirectory default directoryNamed: 'telegramTestResults'.
	directory assureExistence.
	File := directory fileNamed: 'e.setup'.