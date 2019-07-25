lib-calls
receive: timeout
	| readBytes |
	(bufferPos - 1 == buffer size) ifTrue: [ 
		 (bufferStart == 1) ifTrue: [
			Debug error: 'Buffer overflow! Loosing data'.
			bufferStart := 1.
			bufferPos := 1] ifFalse: [
		(bufferStart == bufferPos) ifTrue: [
			"Lucky, dont copy at all"
			bufferStart := 1.
			bufferPos := 1]
		ifFalse: [
			| counter |
			counter := 1.
		
			bufferStart to: bufferPos - 1 do: [:i |
				buffer at: counter put: (buffer at: i).
				counter := counter + 1].
			bufferPos := bufferPos - bufferStart + 1.
			bufferStart := 1]]].
	readBytes := socket receiveDataTimeout: timeout into: buffer startingAt: bufferPos.
	bufferPos := bufferPos + readBytes.
	bufferStart to: bufferPos - 1 do: [ :i |
		((buffer at: i) = Character lf) ifTrue: [
			| json |
			json := buffer copyFrom: bufferStart to: (bufferPos - 1).
			bufferStart := i + 1.
			^ jsonParser deserializeString: json]].
	^nil