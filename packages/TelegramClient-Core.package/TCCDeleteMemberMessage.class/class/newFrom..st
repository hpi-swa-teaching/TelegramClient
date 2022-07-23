instance creation
newFrom: aJsonObject

	^ self new
		member: (aJsonObject at: 'user_id');
		yourself