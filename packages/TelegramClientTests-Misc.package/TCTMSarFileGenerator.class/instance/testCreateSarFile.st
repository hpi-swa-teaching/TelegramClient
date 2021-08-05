testing
testCreateSarFile

	| zip tdlibFolder corePackage uiPackage |

	corePackage := 'TelegramClient-Core'.
	uiPackage := 'TelegramClient-UI'.
	tdlibFolder := 'Tdlib'.
	zip := ZipArchive new.
	self streamForPackage: corePackage inZip: zip.
	self streamForPackage: uiPackage inZip: zip.
	zip addTree: Smalltalk imagePath match: [:e | e fullName beginsWith: Smalltalk imagePath, FileDirectory slash, tdlibFolder].
	zip addString: (self generatePreamble: corePackage uipackage: uiPackage nativeResourceFolder: tdlibFolder) as: 'install/preamble'.
	zip writeToFileNamed: 'TelegramClient.sar'.