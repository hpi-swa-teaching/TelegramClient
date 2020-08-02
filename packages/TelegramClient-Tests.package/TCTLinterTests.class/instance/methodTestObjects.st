accessing
methodTestObjects

	^ (self classTestObjects collect: [:aClassTestObject | aClassTestObject methods]) flatten