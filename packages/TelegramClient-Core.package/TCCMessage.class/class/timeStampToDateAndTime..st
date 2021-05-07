json conversion
timeStampToDateAndTime: anUnixTimestamp

	^ DateAndTime fromUnixTime: anUnixTimestamp + DateAndTime localOffset asSeconds