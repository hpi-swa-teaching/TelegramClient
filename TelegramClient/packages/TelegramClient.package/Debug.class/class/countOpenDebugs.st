as yet unclassified
countOpenDebugs
	"Transcript countOpenTranscripts"

	^ (self dependents select: [:e | e isTextView]) size