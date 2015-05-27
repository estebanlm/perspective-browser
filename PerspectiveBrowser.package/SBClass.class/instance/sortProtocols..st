private
sortProtocols: aCollection
	"List the protocols in this order: 
		1. the -- all -- category
		2. the normal protocols
		3. the extension protocols of the given package
		4. the extension protocols"
	|  sortBlock currentPackageProtocols otherProtocols |

	currentPackageProtocols := aCollection reject: [ :protocol | protocol name beginsWith: '*' ].
	otherProtocols := aCollection difference: currentPackageProtocols.
	sortBlock := [ :a :b | (a name compare: b name caseSensitive: false) = 1 ].
	^ (currentPackageProtocols sort: sortBlock), (otherProtocols sort: sortBlock)