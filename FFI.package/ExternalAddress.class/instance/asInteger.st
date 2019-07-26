converting
asInteger
	"convert address to integer"
	^ self asByteArrayPointer integerAt: 1 size: self size signed: false