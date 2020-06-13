initialize-release
initialize
	jsonParser := TDJSONParser new.
	destroyed := false.
	receivingMsgQueue := OrderedCollection new.