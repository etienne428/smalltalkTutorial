"
This is a class that manage the window in which the lesson's text has to be shown .

It shouldn't be used by the user.

Created by Etienne Mettaz
"
Class {
	#name : #ViewLesson,
	#superclass : #Object,
	#instVars : [
		'window',
		'shoutMorph',
		'sourceTextModel'
	],
	#classVars : [
		'Instance'
	],
	#classInstVars : [
		'Instance'
	],
	#category : #Tutorial
}

{ #category : #gui }
ViewLesson >> buildText [
"This method is a copy of ProfStef>>LessonView>>buildText"

	| scrolledText |
	scrolledText := self sourceTextModel newScrolledText
		beForSmalltalkScripting;
		beWrapped;
		yourself.
	scrolledText textArea font: StandardFonts codeFont.
	^ scrolledText
]

{ #category : #'morphic ui' }
ViewLesson >> buildWindow [ 

	^ window := SystemWindow labelled: 'Learn Smalltalk'
]

{ #category : #accessing }
ViewLesson >> doItContext [ 
	^ nil
]

{ #category : #accessing }
ViewLesson >> doItReceiver [ 

	^ nil
]

{ #category : #accessing }
ViewLesson >> selectedClassOrMetaClass [
	^ nil
]

{ #category : #shout }
ViewLesson >> shoutAboutToStyle: aPluggableShoutMorphOrView [
	^ true
]

{ #category : #accessing }
ViewLesson >> shoutMorph [ 

	^ shoutMorph 
]

{ #category : #shout }
ViewLesson >> shoutMorphFillMenu: aMenu [
	^ aMenu addAllFrom: self menu
]

{ #category : #gui }
ViewLesson >> showLesson: aLesson  withTitle: aTitle [

	self buildWindow setLabel: 'Lesson number ', aTitle asString.
	self sourceTextModel setText: aLesson 
]

{ #category : #accessing }
ViewLesson >> sourceTextModel [
	^ sourceTextModel ifNil: [ sourceTextModel := RubScrolledTextModel new interactionModel: self ].
]

{ #category : #accessing }
ViewLesson >> start [ 
	"Initialise window. Called from LearnSmalltalk>>next"
	
	window ifNil: [window := self buildWindow.].
	shoutMorph := self buildText.
	window addMorph: shoutMorph frame: (0 @ 0 corner: 1 @ 1).
	window openInWorld.
	^ self 
]
