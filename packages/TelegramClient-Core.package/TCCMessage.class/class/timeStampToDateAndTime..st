json conversion
timeStampToDateAndTime: anInteger

	^ (DateAndTime fromUnixTime: anInteger) asLocal