as yet unclassified
showln: anObject
	"TextCollector compatibility. Ensure a new line before inserting a message."
	self cr;
		nextPutAll: anObject asText.
		self endEntry.