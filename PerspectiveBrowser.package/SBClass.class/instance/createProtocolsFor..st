factory
createProtocolsFor: aClass
	| protocols |
	
	protocols := self sortProtocols: (aClass organization protocolOrganizer protocols
		collect: [ :each | (SBProtocol model: each environmentClass: aClass) ]).
		
	self flag: #todo. "this is an attempt for optimise a bit the construction of all protocol. 
	 I just collect the others. But in fact, here the real problem is that I'm constructing 
	 the complete list, instead trying to provide elements when needed"
	protocols := protocols copyWithFirst: ((SBProtocol 
		model: aClass organization protocolOrganizer allProtocol 
		environmentClass: aClass)
		methods: (protocols 
			inject: #()
			into: [ :all :each | all, (each methods) ]);
		yourself).
		
	^ protocols