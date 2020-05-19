Client
testClientDestroysHandle
| client handle mock |
mock := AbstractTeleClientFactoryMock new CreateClient: ''.
client:= TeleClient new initialize: mock.
client Free.
handle:= client client.
self assert: handle  equals: nil.
self assert: (mock freed) equals: True