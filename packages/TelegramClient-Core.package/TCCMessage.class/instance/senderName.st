accessing
senderName

	^ ((self senderType) caseOf: {
		[#messageSenderChat] -> [self chat title].
		[#messageSenderUser] -> [(self core userStore getUserFor: self userId) fullName].
	} otherwise: ['Unsupported sender type'])