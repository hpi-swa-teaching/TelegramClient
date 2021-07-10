utility
fileNameFor: anEmoji

	^ (anEmoji 
		inject: String new
		into: [:name :unit | name , unit , '-']) 
		allButLast