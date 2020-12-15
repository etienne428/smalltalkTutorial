"
This class is the tutorial's main class, the only one that the user actually use.

Created by Etienne Mettaz
"
Class {
	#name : #LearnSmalltalk,
	#superclass : #Object,
	#instVars : [
		'view',
		'student'
	],
	#classVars : [
		'Instance'
	],
	#classInstVars : [
		'lesson'
	],
	#category : #Tutorial
}

{ #category : #accessing }
LearnSmalltalk class >> default [ 

	^ Instance ifNil: [ Instance := self new ].
]

{ #category : #accessing }
LearnSmalltalk class >> next [ 
	^ self default next.
]

{ #category : #accessing }
LearnSmalltalk class >> start [ 
	^ self default start.
]

{ #category : #accessing }
LearnSmalltalk >> next [

	SmalltalkLesson nextLesson: (self student currentLesson).
	self viewLesson update.
]

{ #category : #accessing }
LearnSmalltalk >> start [ 
	"Initialise window. Called from LearnSmalltalk>>next"
	
	self viewLesson start.
	^ self 
]

{ #category : #accessing }
LearnSmalltalk >> student [

	^ student ifNil: [ student := Student new ]
]

{ #category : #accessing }
LearnSmalltalk >> viewLesson [

	^ view ifNil: [ view := ViewLesson new]
]

{ #category : #'morphic ui' }
LearnSmalltalk >> window [ 
	"Build a new window if Nil. Called from LearnSmalltalk>>start"
	
	^ SystemWindow labelled: 'PrStef lesson'.
]
