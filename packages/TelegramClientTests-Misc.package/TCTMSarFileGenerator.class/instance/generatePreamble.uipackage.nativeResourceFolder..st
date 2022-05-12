helpers
generatePreamble: corePackage uipackage: uiPackage nativeResourceFolder: aFolder

	^ '
		self fileInMonticelloZipVersionNamed: ''', corePackage, '.mcz''.
		self fileInMonticelloZipVersionNamed: ''', uiPackage, '.mcz''.
		TCUTelegram registerInWorldMenu.
		self zip members do: [:aFile | self extractMemberWithoutPath: aFile inDirectory: FileDirectory default].
		TCCFFIClient newForCurrentOs class moduleName.'