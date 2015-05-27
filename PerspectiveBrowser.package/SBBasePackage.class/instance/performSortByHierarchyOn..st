private
performSortByHierarchyOn: nodes
	"Roel Wuyts: Reimplements sortHierarchically in a crude and ugly way that is however much more efficient"
	| results supersChain superior result chain1 chain2 i max |
	
	results := OrderedCollection new: nodes size.
	nodes do: [ :eachClass |
		supersChain := eachClass model withAllSuperclasses reversed.
		supersChain removeAllSuchThat: [ :eachSuperclass | nodes noneSatisfy: [ :each | each model = eachSuperclass ] ].
		superior := supersChain size > 1
			ifTrue: [
				superior := supersChain atLast: 2. 
				nodes detect: [ :each | each model = superior]]
			ifFalse: [ nil ].
		results add: supersChain contents -> (eachClass ancestor: superior) ].

	^(results 
		sorted: [:assoc1 :assoc2 |
			result := nil.
			chain1 := assoc1 key.
			chain2 := assoc2 key. 
			max := chain1 size min: chain2 size.
			i := 1.
			[result isNil and: [i <= max]] whileTrue: [
				(chain1 at: i) = (chain2 at: i)
					ifTrue: [i := i + 1]
					ifFalse: [result := (chain1 at: i) name < (chain2 at: i) name]].
			result ifNil: [
				chain1 size < chain2 size] ifNotNil: [result] ])
		collect: [ :assoc | assoc value ] as: Array