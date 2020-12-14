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
		'shoutMorph'
	],
	#classVars : [
		'Instance'
	],
	#classInstVars : [
		'Instance'
	],
	#category : #Tutorial
}

{ #category : #accessing }
ViewLesson class >> start [ 

	Instance ifNil: [ Instance := self class new.].
	^ Instance start
]

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
	"This method is a copy of ProfStef>>LessonView>>buildWindow"
	"Build a new window if Nil. Called from LearnSmalltalk>>start"
	
	^ SystemWindow labelled: 'PrStef lesson'.
]

{ #category : #accessing }
ViewLesson >> start [ 
	"Initialise window. Called from LearnSmalltalk>>next"
	
	window ifNil: self buildWindow.
	shoutMorph := self buildText.
	window addMorph: shoutMorph frame: (0 @ 0 corner: 1 @ 1).
	^ self 
]
