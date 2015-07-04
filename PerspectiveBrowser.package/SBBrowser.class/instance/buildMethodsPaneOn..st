building
buildMethodsPaneOn: presenter
	| instanceSide classSide |

	presenter custom: (instanceSide := self buildMethodsInstanceSidePaneOn: presenter).
	presenter custom: (classSide := self buildMethodsClassSidePaneOn: presenter).
	presenter custom: (self buildVariablesPaneOn: presenter).
			
	presenter initialize: [ :accumulator |
		SBStartingPath startingInstanceSideSelection 
			ifFalse: [ accumulator pane lastActivePresentation: classSide ] ]