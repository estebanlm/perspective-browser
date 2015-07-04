private
isScriptMethod: aMethod
	^ aMethod methodClass isMeta
		and: [ aMethod numArgs isZero 
		and: [ aMethod pragmas anySatisfy: [ :each | each keyword = #script ] ] ]