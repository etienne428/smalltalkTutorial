"
This is a class that creates lessons (its instances) for the Tutorial>>LearnSmalltalk .

It shouldn't be used by the user, the instances are pre-defined.

Created by Etienne Mettaz
"
Class {
	#name : #SmalltalkLesson,
	#superclass : #Object,
	#category : #Tutorial
}

{ #category : #lessons }
SmalltalkLesson class >> lesson01 [ 
	^ '"Congratulations! You reached the first lesson of this Smalltalk tutorial! "'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson02 [
	^ '"This is the second lesson."'
]

{ #category : #lessons }
SmalltalkLesson class >> listOfLessons [
^ #(lesson01 lesson02)
]

{ #category : #control }
SmalltalkLesson class >> nextLesson: anInteger [

	| nameOfLesson |
	nameOfLesson := self listOfLessons at: anInteger.
	^ self perform: nameOfLesson  .
]
