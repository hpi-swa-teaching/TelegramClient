accessing
senderName

	^ (self senderType) caseOf: {
		[#messageSenderChat] -> [self chat title].
		[#messageSenderUser] -> [self senderUser fullName].
	} otherwise: ['Unsupported sender type']