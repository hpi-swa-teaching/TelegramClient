system startup
install
	"Resuming the image on another architecture may require a re-compilation of structure layout."
	| newPlatform |
	newPlatform := Smalltalk platformName.
	PreviousPlatform = newPlatform
		ifFalse:
			[self recompileStructures.
			PreviousPlatform := newPlatform]