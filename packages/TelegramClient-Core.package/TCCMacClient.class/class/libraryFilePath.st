accessing
libraryFilePath

	^ FileDirectory default / ('libtdjson.' , self tdlibVersion , '.dylib')