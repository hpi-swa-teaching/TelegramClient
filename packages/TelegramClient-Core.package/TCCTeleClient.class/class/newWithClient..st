creation
newWithClient: anActualClient

	| specificClient |

	specificClient := anActualClient create.

	^ self new
		specificClient: anActualClient;
		handle: specificClient