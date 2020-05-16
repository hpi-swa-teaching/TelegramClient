initialize-release
receive: aTimeoutNumber

	^ self client receive: self handle with: aTimeoutNumber.