as yet unclassified
initialize
	super initialize.
	client := self createJSONClient.
	jsonParser := TDJSONParser new.