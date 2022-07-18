accessing
moduleName

	| filePath |

	filePath := self libraryFilePath.

	filePath exists ifFalse: [self downloadArchive].

	^ filePath fullName