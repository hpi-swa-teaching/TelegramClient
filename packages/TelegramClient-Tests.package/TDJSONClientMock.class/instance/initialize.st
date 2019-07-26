as yet unclassified
initialize
	jsonParser := TDJSONParser new.
	destroyed := false.
	receivingMsgQueue := OrderedCollection new.