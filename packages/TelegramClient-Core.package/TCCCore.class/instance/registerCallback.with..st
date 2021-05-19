utility
registerCallback: aClosure with: aCallbackId

	self pendingRequests at: aCallbackId put: aClosure