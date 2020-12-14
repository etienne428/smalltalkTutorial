"
This class emulate the student of the Tutorial

Created by Etienne Mettaz
"
Class {
	#name : #Student,
	#superclass : #Object,
	#instVars : [
		'currentLesson'
	],
	#classInstVars : [
		'Instance'
	],
	#category : #Tutorial
}

{ #category : #'instance creation' }
Student class >> new [ 

	^ Instance ifNil: [ Instance := self new ]
]

{ #category : #accessing }
Student >> currentLesson [ 

	currentLesson ifNil: [ ^ 0 . ] 
					ifNotNil: [ ^ currentLesson + 1 ].
]

{ #category : #'instance creation' }
Student >> new [ 

	currentLesson := 1.
	^ self
]
