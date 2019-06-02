as yet unclassified
initialize
	client := nil.
	jsonParser := TDJSONParser new.
	destroyed := false.
	startTime := Time millisecondClockValue.
	fileStream := FileStream fileNamed: 'RecordedTDJSONEvents.txt'