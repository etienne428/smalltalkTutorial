Class {
	#name : #TutorialWindow,
	#superclass : #Object,
	#instVars : [
		'window'
	],
	#category : #Tutorial
}

{ #category : #'as yet unclassified' }
TutorialWindow >> startWindow [
	^ SystemWindow labelled: 'Smalltalk Tutorial'.
]
