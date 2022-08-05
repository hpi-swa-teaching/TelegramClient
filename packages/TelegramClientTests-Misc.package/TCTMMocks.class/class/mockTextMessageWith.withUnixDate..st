message
mockTextMessageWith: aCore withUnixDate: aUnixDate

	^ TCTMMocks mockTextMessageWith: aCore withDate: (DateAndTime fromUnixTime: aUnixDate)