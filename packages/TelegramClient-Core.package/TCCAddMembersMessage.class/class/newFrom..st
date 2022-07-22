instance creation
newFrom: aJsonObject

	^ self new
		members: (aJsonObject at: 'member_user_ids');
		yourself