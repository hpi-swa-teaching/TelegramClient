accessing
folderForModule

	^ (FileDirectory default / '..' / 'Linux-x86_64' / 'lib' / 'squeak') entries last asFileDirectory