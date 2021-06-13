comparing
hash

	^ ((self firstName hash
		bitXor: (self lastName hash))
		bitXor: (self id hash))
		bitXor: (self username hash)
