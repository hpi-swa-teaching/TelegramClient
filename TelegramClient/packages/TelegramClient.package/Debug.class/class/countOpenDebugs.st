as yet unclassified
countOpenDebugs
	^ (self dependents
		select: [:t1 | t1 isTextView]) size