accessing
folderForModule

	FileDirectory default entries.
	(FileDirectory default / '..') entries.
	(FileDirectory default / '..' / 'Linux-x86_64') entries.

	^ (FileDirectory default / '..' / 'Linux-x86_64' / 'lib' / 'squeak') entries last asFileDirectory