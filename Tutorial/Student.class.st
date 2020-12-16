"
This class emulate the student of the Tutorial

Created by Etienne Mettaz
"
Class {
	#name : #Student,
	#superclass : #Object,
	#instVars : [
		'currentLessonNumber'
	],
	#category : #Tutorial
}

{ #category : #accessing }
Student >> currentLesson [ 

	^ currentLessonNumber
]

{ #category : #accessing }
Student >> decrementLesson [

	^ currentLessonNumber = 1 ifTrue: [ currentLessonNumber := 1. ] 
		ifFalse: [ currentLessonNumber := currentLessonNumber - 1. ]
	
]

{ #category : #accessing }
Student >> incrementLesson [

	currentLessonNumber ifNil: [ currentLessonNumber := 1. ].
	currentLessonNumber = SmalltalkLesson listOfLessons size ifTrue: [^ currentLessonNumber .].
	^ currentLessonNumber := currentLessonNumber + 1.
]

{ #category : #accessing }
Student >> newTutorial [

	^ currentLessonNumber := 1
]
