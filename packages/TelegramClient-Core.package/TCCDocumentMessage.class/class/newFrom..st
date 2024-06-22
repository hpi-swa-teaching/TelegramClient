instance creation
newFrom: aJsonObject

	^ self new
		filename: ((aJsonObject at: 'document') at: 'file_name');
		yourself
