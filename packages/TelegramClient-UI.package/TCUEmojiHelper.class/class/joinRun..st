utility
joinRun: aCollection

	^ (aCollection inject: String new
		into: [:name :unit | name , unit , '-']) allButLast