utility
registerCallback: aClosure with: aCallbackId

	self pendingRequests at: (aCallbackId asString) put: aClosure