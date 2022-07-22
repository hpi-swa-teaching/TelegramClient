message
mockTextMessageWith: aCore withUnixDate: aUnixDate

	"DateAndTime fromUnixTime:"
	^ TCTMMocks mockTextMessageWith: aCore withDate: (DateAndTime fromUnixTime: aUnixDate)