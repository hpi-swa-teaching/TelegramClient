calculating
getColorArrayFrom: usr
	|bytes|
	bytes := usr id asByteArray.
	^ Array with: (self calculateColor: bytes With: 1) with: (self calculateColor: bytes With: 2)  with: (self calculateColor: bytes With: 3)
	
