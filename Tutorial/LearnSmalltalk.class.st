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
LearnSmalltalk class >> previous [ 
	^ self default previous.
]

{ #category : #accessing }
LearnSmalltalk class >> start [ 

	^ self default start.
]

{ #category : #accessing }
LearnSmalltalk >> next [

	self student incrementLesson.
	self showNewLesson .
]

{ #category : #accessing }
LearnSmalltalk >> previous [

	self student decrementLesson.
	self showNewLesson .
]

{ #category : #accessing }
LearnSmalltalk >> showNewLesson [

	| lessonTitle lessonText |
	lessonTitle := self student currentLesson.
	lessonText := SmalltalkLesson nextLesson: lessonTitle.
	^ self viewLesson showLesson: lessonText withTitle: lessonTitle 
]

{ #category : #accessing }
LearnSmalltalk >> start [ 
	"Initialise window. Called from LearnSmalltalk>>next"
	
	view := ViewLesson new.
	self viewLesson start.
	student := Student new.
	self student newTutorial.
	^ self showNewLesson .
	 
]

{ #category : #accessing }
LearnSmalltalk >> student [

	^ student
]

{ #category : #accessing }
LearnSmalltalk >> viewLesson [

	^ view
]
