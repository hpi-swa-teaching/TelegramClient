as yet unclassified
getSelectedUserId
	^ (users at: self getContactIndex ifAbsent: [^ -1]) id.