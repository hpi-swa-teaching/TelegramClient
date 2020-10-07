accessing
moduleName

	| filePath |

	filePath := FileDirectory default / self fileName.
	
	filePath exists ifFalse: [self downloadArchive].

	^ filePath fullName