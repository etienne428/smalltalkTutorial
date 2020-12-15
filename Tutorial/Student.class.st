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
