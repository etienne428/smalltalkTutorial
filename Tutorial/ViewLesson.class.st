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

{ #category : #accessing }
ViewLesson >> shoutMorph [ 

	^ shoutMorph 
]

{ #category : #accessing }
ViewLesson >> start [ 
	"Initialise window. Called from LearnSmalltalk>>next"
	
	shoutMorph := self buildText.
	self window addMorph: shoutMorph frame: (0 @ 0 corner: 1 @ 1).
	self window openInWorld.
	^ self 
]

{ #category : #'morphic ui' }
ViewLesson >> window [ 
	"This method is a copy of ProfStef>>LessonView>>buildWindow"
	"Build a new window if Nil. Called from LearnSmalltalk>>start"
	
	^ window ifNil: [window := SystemWindow labelled: 'PrStef lesson'].
]
