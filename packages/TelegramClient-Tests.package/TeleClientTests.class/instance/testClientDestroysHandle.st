client
testClientDestroysHandle
| client handle mock |
mock := AbstractTeleClientFactoryMock new createClient: ''.
client:= TeleClient new initialize: mock.
client free.
handle:= client specificClient.
self assert: handle  equals: nil.
self assert: (mock freed) equals: True