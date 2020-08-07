helpers
generatePreamble: corePackage uipackage: uiPackage nativeResourceFolder: aFolder

	^ '
		self fileInMonticelloZipVersionNamed: ''', corePackage, '.mcz''.
		self fileInMonticelloZipVersionNamed: ''', uiPackage, '.mcz''.
		TCUTelegram registerInWorldMenu.
		((self zip )members) do: [ :f | self extractMemberWithoutPath: f inDirectory: destination].'
