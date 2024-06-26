instance creation
newFrom: aJsonObject

	^ self new
		filename: ((aJsonObject at: 'document') at: 'file_name');
		documentId: (((aJsonObject at: 'document') at: 'document') at: 'id');
		yourself
