accessing
canLoadMoreMembers

	^self isSuperGroup and: [self members size ~= self memberCount]