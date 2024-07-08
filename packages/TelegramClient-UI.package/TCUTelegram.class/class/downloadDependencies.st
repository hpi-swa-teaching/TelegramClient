instance creation
downloadDependencies
	
	TCCExternalLibrary mustDownloadDependencies ifTrue: [
		'Downloading Libraries'
			displayProgressAt: Display center
			from: 0
			to: 1
			during: [ :bar |
					TCCExternalLibrary downloadAllDependencies.
					bar value: 1.
			]
		]