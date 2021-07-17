utility
reencodeString: aString
	
	"The Json library does not handle UTF-16 correctly. Reencode to work around this"
	"Note how JSON>>unescapeUnicode only looks at the next 4 characters after \u"
	^ (aString convertToEncoding: 'UTF-16') convertFromEncoding: 'UTF-16'