loading
fulfillMessageRequest: aMessageId

	| fulfilledMessageRequests |

	fulfilledMessageRequests := self requestedMessages select: [:req | req messageId = aMessageId].
	fulfilledMessageRequests do: [:messageRequest | messageRequest completeRequest.].

	self requestedMessages removeAll: fulfilledMessageRequests.