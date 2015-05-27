accessing
classes
	"Classes will be sorted by ancestor (hierarchy) relevance, check #createClasses for details"
	^ classes ifNil: [ classes := self createClasses ]