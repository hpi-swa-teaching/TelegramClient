default values
defaultDirectory

	^ (FileDirectory default directoryNamed: self defaultFolderName) 
			assureExistence; 
			yourself