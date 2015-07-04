accessing
actionFor: aMethod target: aBrowser
	| overrides overridden |	
	
	overrides := self class isOverrideMethod: aMethod.
	overridden := aMethod isOverridden.
	
	(overrides and: [ overridden ]) ifTrue: [ 
		^ self iconOverrideAndOverriddenFor: aMethod target: aBrowser ].
	overrides ifTrue: [ 
		^ self iconOverrideFor: aMethod target: aBrowser ].
	"is overridden"
	^ self iconOverriddenFor: aMethod target: aBrowser.
	