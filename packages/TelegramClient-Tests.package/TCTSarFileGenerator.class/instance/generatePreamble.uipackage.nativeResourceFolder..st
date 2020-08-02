helpers
generatePreamble: corePackage uipackage: uiPackage nativeResourceFolder: aFolder

	^ '
		| file |
		self fileInMonticelloZipVersionNamed: ''', corePackage, '.mcz''.
		file := Smalltalk platformName caseOf: {
			[''Win32''] -> [''tdjson.dll''].
			[''Mac OS''] -> [''libtdjson.1.6.0.dylib''].
			[''unix''] -> [''libtdjson.1.6.0.dylib'']}.	
		self fileInMonticelloZipVersionNamed: ''', uiPackage, '.mcz''.
		TCUTelegram registerInWorldMenu.
		(self membersMatching: (''', aFolder, FileDirectory slash, ''', file)) do: [:aFile | self extractMemberWithoutPath: aFile inDirectory: FileDirectory default].' 