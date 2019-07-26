as yet unclassified
initialize
	jsonParser := TD_JSONParser new.
	destroyed := false.
	receivingMsgQueue := OrderedCollection new.