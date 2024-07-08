as yet unclassified
mustDownloadDependencies

	self libs do: [ :lib | lib doesLibraryExist ifFalse: [ ^true ] ].
	^ false