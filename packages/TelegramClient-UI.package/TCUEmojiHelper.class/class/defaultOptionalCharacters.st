default values
defaultOptionalCharacters

	"Emoji are encoded differently, by different devices, applications and operating systems.
	The ground truth though lies close to an encoding without VARIATION SELECTOR-16 characters.
	Thats why we collect them here as optional characters."
	^ OrderedCollection newFrom: {'FE0F'}