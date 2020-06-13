private
environmentFor: aPlugIn withRule: aRule

	^ aPlugIn = SLSmallLintPlugIn
		ifTrue: [TCTScopedEnvironment newFor: self classTestObjects test: aRule plugIn: SLSmallLintPlugIn]
		ifFalse: [SLDefaultEnvironment new]