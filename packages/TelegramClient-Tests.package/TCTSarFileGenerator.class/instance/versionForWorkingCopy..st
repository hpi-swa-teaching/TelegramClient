helpers
versionForWorkingCopy: aWorkingCopy
	"Supresses the working copy dialogue and returns a version"

	| version |	
	[version := aWorkingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:n | 
			n patchBlock value.
			n resume: (Array with: n suggestedName with: '' with: Set new)].
		^version