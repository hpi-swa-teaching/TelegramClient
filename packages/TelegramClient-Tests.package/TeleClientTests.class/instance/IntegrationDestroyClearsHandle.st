Client
IntegrationDestroyClearsHandle
| client handle |

client:= TeleClient new.
client free.
handle:= client specificClient.
self assert: handle  equals: nil