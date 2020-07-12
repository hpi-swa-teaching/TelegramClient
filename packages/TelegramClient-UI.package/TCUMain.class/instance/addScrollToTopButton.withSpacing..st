defaultValues
addScrollToTopButton: aMorph withSpacing: aSpacing

	| scrollToTopButton |

	scrollToTopButton := TCUButton new
	 	text: 'scroll Up';
		on: #mouseUp send: #setToTop to: self chatsList.
	scrollToTopButton position: (aMorph position x + aSpacing) @ aSpacing.

	aMorph addMorph: scrollToTopButton.