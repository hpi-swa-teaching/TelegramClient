helpers
versionForWorkingCopy: aWorkingCopy

	| version |

	version := ''.
	[version := aWorkingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:anObject |
			anObject patchBlock value.
			anObject resume: (Array with: anObject suggestedName with: '' with: Set new)].
	^ version