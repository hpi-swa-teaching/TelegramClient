message
mockTextMessageWith: aCore withDate: aUnixDate

	"DateAndTime fromUnixTime:"
	^ (TCTMMocks mockTextMessageWith: aCore) date: (DateAndTime fromUnixTime: aUnixDate).