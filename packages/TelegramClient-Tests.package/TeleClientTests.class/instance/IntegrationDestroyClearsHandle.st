Client
IntegrationDestroyClearsHandle
| client handle |

client:= TeleClient new.
client free.
handle:= client client.
self assert: handle  equals: nil