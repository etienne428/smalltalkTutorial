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
	#classVars : [
		'Instance'
	],
	#category : #Tutorial
}

{ #category : #accessing }
Student >> currentLesson [ 

	currentLesson ifNil: [ ^ 1 . ] 
					ifNotNil: [ ^ currentLesson + 1 ].
]

{ #category : #accessing }
Student >> decrementLesson [

	^ currentLesson = 1 ifTrue: [ currentLesson := 1. ] ifFalse: [ currentLesson := currentLesson - 1. ]
	
]

{ #category : #accessing }
Student >> incrementLesson [

	currentLesson ifNil: [ currentLesson := 1. ].
	^ currentLesson := currentLesson + 1.
]

{ #category : #accessing }
Student >> newTutorial [

	^ currentLesson := 1
]
