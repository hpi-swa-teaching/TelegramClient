as yet unclassified
getSelectedUserId
	^ (users at: self getSelectedContactIndexAsNumber ifAbsent: [^ -1]) id.