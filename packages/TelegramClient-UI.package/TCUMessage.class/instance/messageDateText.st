text conversion
messageDateText

	^ (String streamContents: [
		:aStream | self date asTime print24: true showSeconds: false on: aStream ]), ' Uhr'