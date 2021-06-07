tests
testsmallLintModifiesCollection

	"Non threadsafe and tracking iterators are used in squeak, so modifying collections while iterating over them does not work"
	self arbitraryCodeRule: #smallLintModifiesCollection.