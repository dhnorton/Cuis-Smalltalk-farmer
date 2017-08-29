RectangleMorph subclass: #AxesMorph
	instanceVariableNames: 'form limitMaxX limitMinX limitMaxY limitMinY title xmax xmid xmin ymax ymid ymin xAxisFormatter yAxisFormatter margin grid drawCotas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!AxesMorph commentStamp: 'jcg 8/29/2003 23:01' prior: 0!
I am responsible for drawing a pair of axes, a grid, and various labels.  I am not responsible for the display of any data, or for handling user input in any special way.!


!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 13:04'!
baseColor
	"Answer the base color to calculate other colors from"
	| baseColor current |

	baseColor := self color.
	current := self.
	[current notNil & (baseColor = Color transparent)]
		whileTrue: [""
			baseColor := current color.
			current := current owner].
	^ baseColor! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:50'!
color: aColor 
	
	super color: aColor.
	self updateCotas! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:45'!
gridOrigin
	"Answer the intersection of the two axes (lower left corner of the grid)"
	| inset |

	inset := self borderWidth + margin.
	^ self bottomLeft + (inset @ inset negated)! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:45'!
limitMaxX: aNumberOrNil
 	"Set the maximum value along the X axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."

	limitMaxX := aNumberOrNil.
	self changed.! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:46'!
limitMaxY: aNumberOrNil
 	"Set the maximum value along the Y axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."
 
	limitMaxY := aNumberOrNil.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:47'!
limitMinX: aNumberOrNil 
 	"Set the minimum value along the X axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."

	limitMinX := aNumberOrNil. 
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:48'!
limitMinY: aNumberOrNil 
 	"Set the minimum value along the Y axis.  If nil, this value will be computed from the data points to be displayed (subclass responsibility, since AxesMorph doesn't know anything about data)."

	limitMinY := aNumberOrNil. 
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:48'!
margin: anInteger
	"Set the size of the margin surrounding the grid."
 
	margin := anInteger.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:46'!
shouldDrawAxis: aBoolean 

	grid drawAxis: aBoolean.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:46'!
shouldDrawCotas: aBoolean 
	aBoolean = drawCotas ifTrue: [^self].
	""
	drawCotas := aBoolean.
	title visible: aBoolean.
	xmax visible: aBoolean.
	xmid visible: aBoolean.
	xmin visible: aBoolean.
	ymax visible: aBoolean.
	ymid visible: aBoolean.
	ymin visible: aBoolean.
	""
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:47'!
shouldDrawGrid: aBoolean 

	grid drawGrid: aBoolean.
	self changed! !

!AxesMorph methodsFor: 'accessing' stamp: 'jcg 8/30/2003 11:50'!
title:aString

	title contents: aString! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:50'!
xAxisFormatter: aFormatterBlock 

	xAxisFormatter := aFormatterBlock.
	self updateCotas! !

!AxesMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:50'!
yAxisFormatter: aFormatterBlock 

	yAxisFormatter := aFormatterBlock.
	self updateCotas! !


!AxesMorph methodsFor: 'change reporting' stamp: 'dhn 6/7/2014 14:43'!
changed

	super changed.
	form := nil.! !


!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 13:03'!
cotaColor
	| baseColor lighter darker |
	baseColor := self baseColor asNontranslucentColor.
	baseColor = Color white
		ifTrue: [^ Color black].
	""
	lighter := baseColor muchLighter.
	darker := baseColor muchDarker.
	""
	^ (lighter diff: baseColor) > (darker diff: baseColor)
		ifTrue: [lighter]
		ifFalse: [darker]! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 13:06'!
drawGridOn: aCanvas 
	| gridColor right bottom width height lighter darker baseColor |
	baseColor := self baseColor.
	lighter := baseColor twiceLighter.
	darker := baseColor twiceDarker.
	gridColor := (lighter diff: baseColor) 
				> (darker diff: baseColor) ifTrue: [lighter] ifFalse: [darker].
	""
	right := self bounds width - margin.
	width := self bounds width - (margin * 2).
	bottom := self bounds height - margin.
	height := self bounds height - (margin * 2).
	(margin to: right by: width / 10) do: 
			[:x | 
			x := x rounded.
			aCanvas 
				line: x @ margin
				to: x @ bottom
				color: gridColor].
	(margin to: bottom by: height / 10) do: 
			[:y | 
			y := y rounded.
			aCanvas 
				line: margin @ y
				to: right @ y
				color: gridColor]! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:42'!
drawOn: aCanvas 
	super drawOn: aCanvas.
	aCanvas
		image: self form
		at: self topLeft + self borderWidth
		rule: Form blend! !

!AxesMorph methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:44'!
form

	form ifNil: [
		Cursor wait showWhile: [
			form := Form 
						extent: (self bounds insetBy: self borderWidth) extent
						depth: Display depth.
			form fillColor: self color. 
			self updateForm]].
	^ form! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:32'!
maxPoint
	"Limit values must be non-nil"

	^ limitMaxX @ limitMaxY! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:32'!
minPoint
	"Limit values must be non-nil"

	^ limitMinX @ limitMinY! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:42'!
updateCotas
	
	| cotaColor |
	xmax isNil
		ifTrue: [^ self].
	""
	cotaColor := self cotaColor.
	title color: cotaColor.
	xmax color: cotaColor.
	xmid color: cotaColor.
	xmin color: cotaColor.
	ymax color: cotaColor.
	ymid color: cotaColor.
	ymin color: cotaColor.
	""
	xmax
		contents: (xAxisFormatter value: self maxPoint x).
	xmid
		contents: (xAxisFormatter value: self maxPoint x + self minPoint x / 2).
	xmin
		contents: (xAxisFormatter value: self minPoint x).
	ymax
		contents: (yAxisFormatter value: self maxPoint y).
	ymid
		contents: (yAxisFormatter value: self maxPoint y + self minPoint y / 2).
	ymin
		contents: (yAxisFormatter value: self minPoint y).
	""
	title position: self topLeft + ((self width - title width / 2) rounded @ 0) + (0 @ self borderWidth).
	""
	xmax position: self topLeft + (self width - xmax width @ (self height - xmax height)) - (margin @ self borderWidth).
	xmid position: self topLeft + ((self width - xmid width / 2) rounded @ (self height - xmid height)) - (0 @ self borderWidth).
	xmin position: self topLeft + (0 @ (self height - xmin height)) + (margin @ 0) - (0 @ self borderWidth).
	""
	ymax position: self topLeft + ((0 - ymax width max: 0)
				@ 0) + (self borderWidth @ margin).
	ymid position: self topLeft + ((15 - ymid width max: 0)
				@ (self height - ymid height / 2) rounded) + (self borderWidth @ 0).
	ymin position: self topLeft + ((0 - ymin width max: 0)
				@ (self height - ymin height)) - (0 @ margin) + (self borderWidth @ 0)! !

!AxesMorph methodsFor: 'drawing' stamp: 'jcg 8/30/2003 12:40'!
updateForm

	self updateCotas.
	grid drawOn: form getCanvas.! !


!AxesMorph methodsFor: 'utility' stamp: 'dhn 6/7/2014 14:43'!
dataPointToGridPoint: aPoint
	"Compute the pixel coordinates wrt the grid origin of the given data point."
	| drawBounds |

	drawBounds := self drawBounds.
	^ (aPoint - self minPoint) * (drawBounds width @ drawBounds height negated).
! !

!AxesMorph methodsFor: 'utility' stamp: 'jcg 8/31/2003 12:38'!
dataPointToWorldPoint: aPoint
	"Compute the pixel coordinates wrt the World origin of the given data point."

	^ (self dataPointToGridPoint: aPoint) + self gridOrigin! !

!AxesMorph methodsFor: 'utility' stamp: 'dhn 6/7/2014 15:11'!
gridPointToDataPoint: aPoint
	"Compute the coordinates of the data point corresponding to the given grid point (given in pixel coordinates wrt the grid origin)."
	| drawBounds |

	drawBounds := self drawBounds.
	^ (aPoint x @ aPoint y negated) / (drawBounds extent) + self minPoint
! !

!AxesMorph methodsFor: 'utility' stamp: 'jcg 8/31/2003 12:35'!
worldPointToDataPoint: aPoint
	"Compute the pixel coordinates of the given data point wrt the World origin."

	^ self gridPointToDataPoint: aPoint - self gridOrigin
	! !


!AxesMorph methodsFor: 'geometry' stamp: 'jcg 8/30/2003 15:58'!
drawBounds
	"answer the rectangle inside the morph where the plot is drawn"
	^ (0 @ 0 rect: self width @ self height - (self borderWidth * 2))
		insetBy: margin! !

!AxesMorph methodsFor: 'geometry' stamp: 'jcg 8/30/2003 15:58'!
extent: aPoint 
	super
		extent: (aPoint max: self minExtent)! !

!AxesMorph methodsFor: 'geometry' stamp: 'jcg 8/30/2003 15:58'!
minExtent
	^ 125 @ 125 + margin ! !


!AxesMorph methodsFor: 'naming' stamp: 'jcg 8/30/2003 16:01'!
externalName
	^ super externalName, (title contents isEmpty ifTrue:[''] ifFalse:[' - ', title contents])! !


!AxesMorph methodsFor: 'initialization' stamp: 'jcg 8/30/2003 16:03'!
initialize

	super initialize.

	self color: Color gray.
	grid := PlotMorphGrid on: self.

	xAxisFormatter := [:x | x printString].
	yAxisFormatter := [:y | y printString].
	self initializeCotas.
	margin := 15 max: (title height + 2).
	form := nil.
	self extent: 1@1.! !

!AxesMorph methodsFor: 'initialization' stamp: 'dhn 6/7/2014 15:12'!
initializeCotas
	drawCotas := true.
	""
	title := StringMorph contents: '' font: TextStyle defaultFont emphasis: 1.
	xmax := StringMorph contents: ''.
	xmid := StringMorph contents: ''.
	xmin := StringMorph contents: ''.
	ymax := StringMorph contents: ''.
	ymid := StringMorph contents: ''.
	ymin := StringMorph contents: ''.
	""
	self addMorph: title.
	self addMorph: xmax.
	self addMorph: xmid.
	self addMorph: xmin.
	self addMorph: ymax.
	self addMorph: ymid.
	self addMorph: ymin.
	""
	limitMinX := 0.
	limitMaxX := 1.0.
	limitMinY := 0.
	limitMaxY := 1.0.! !


PluggableSystemWindow subclass: #CustomSystemWindow
	instanceVariableNames: 'refreshMessage endReceiver endMessage parm'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!CustomSystemWindow methodsFor: 'as yet unclassified' stamp: 'dhn 10/29/2014 12:35'!
closeBoxHit
	"Closing action"
	parm 
		ifNil: [endReceiver perform: endMessage]
		ifNotNil: [endReceiver perform: endMessage withArguments: (Array with: parm)]
	
! !


!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 11/24/2013 15:26'!
endMessage

	^ endMessage! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 11/24/2013 15:26'!
endMessage: anObject

	endMessage := anObject! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 10/29/2014 12:31'!
endMessage: anObject with: aParm
	"Set values of endMessage and parm."
	endMessage := anObject.
	parm := aParm! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 11/24/2013 15:26'!
endReceiver

	^ endReceiver! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 11/24/2013 15:26'!
endReceiver: anObject

	endReceiver := anObject! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 10/29/2014 12:36'!
parm

	^ parm! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 10/29/2014 12:36'!
parm: anObject

	parm := anObject! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 11/17/2014 15:26'!
refreshMessage
	"Answer the method used to refresh the window"
	^ refreshMessage! !

!CustomSystemWindow methodsFor: 'accessing' stamp: 'dhn 11/17/2014 15:27'!
refreshMessage: aSymbol
	"Set the method used to refresh the window"
	refreshMessage := aSymbol! !


BorderedMorph subclass: #DieMorph
	instanceVariableNames: 'faces dieValue isStopped'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 15:27'!
dieValue
	^ dieValue! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:57'!
dieValue: aNumber 
	(aNumber isInteger
			and: [aNumber > 0]
			and: [aNumber <= faces])
		ifTrue: [dieValue := aNumber.
			self changed]! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:55'!
drawDotOn: aCanvas at: aPoint 
	aCanvas
		fillOval: (Rectangle center: self position + (self extent * aPoint) extent: self extent / 6)
		color: Color black! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:53'!
drawOn: aCanvas 
	super drawOn: aCanvas.
	(self perform: ('face' , dieValue asString) asSymbol)
		do: [:aPoint | self drawDotOn: aCanvas at: aPoint]! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 1/8/2012 10:45'!
face1
	^ {0.5 @ 0.5}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:46'!
face2
	^ {0.25 @ 0.25. 0.75 @ 0.75}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:47'!
face3
	^ {0.25 @ 0.25. 0.75 @ 0.75. 0.5 @ 0.5}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:48'!
face4
	^ {0.25 @ 0.25. 0.75 @ 0.25. 0.75 @ 0.75. 0.25 @ 0.75}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:49'!
face5
	^ {0.25 @ 0.25. 0.75 @ 0.25. 0.75 @ 0.75. 0.25 @ 0.75. 0.5 @ 0.5}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:49'!
face6
	^ {0.25 @ 0.25. 0.75 @ 0.25. 0.75 @ 0.75. 0.25 @ 0.75. 0.25 @ 0.5. 0.75 @ 0.5}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:50'!
face7
	^ {0.25 @ 0.25. 0.75 @ 0.25. 0.75 @ 0.75. 0.25 @ 0.75. 0.25 @ 0.5. 0.75 @ 0.5. 0.5 @ 0.5}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:51'!
face8
	^ {0.25 @ 0.25. 0.75 @ 0.25. 0.75 @ 0.75. 0.25 @ 0.75. 0.25 @ 0.5. 0.75 @ 0.5. 0.5 @ 0.5. 0.5 @ 0.25}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:51'!
face9
	^ {0.25 @ 0.25. 0.75 @ 0.25. 0.75 @ 0.75. 0.25 @ 0.75. 0.25 @ 0.5. 0.75 @ 0.5. 0.5 @ 0.5. 0.5 @ 0.25. 0.5 @ 0.75}! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:40'!
faces: aNumber 
	"Set the number of faces"
	(aNumber isInteger
			and: [aNumber > 0]
			and: [aNumber <= 9])
		ifTrue: [faces := aNumber]! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 15:06'!
handlesMouseDown: anEvent 
	^ false "change to true if a click will start and stop the die cycling"! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 7/7/2013 22:11'!
initialize
	super initialize.
	self extent: 50 @ 50.
	self useGradientFill; borderWidth: 2; useRoundedCorners.
	self setBorderStyle: #complexRaised.
	self fillStyle direction: self extent.
	self color: Color green.
	self sticky: true.
	dieValue := 6.
	faces := 6.
	isStopped := true! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 12:28'!
mouseDown: anEvent 
	anEvent redButtonPressed
		ifTrue: [isStopped := isStopped not]! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 12:00'!
step
	isStopped
		ifFalse: [self dieValue: (1 to: faces) atRandom]! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 12:32'!
stepTime
	^ 60! !

!DieMorph methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 15:03'!
toggleStop
	isStopped := isStopped not! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

DieMorph class
	instanceVariableNames: ''!

!DieMorph class methodsFor: 'as yet unclassified' stamp: 'dhn 11/29/2011 11:35'!
faces: aNumber
	^ self new faces: aNumber! !


Morph subclass: #GameBoard
	instanceVariableNames: 'board cells handler pasteUp'
	classVariableNames: 'FullWorld OldGoal'
	poolDictionaries: ''
	category: 'Game-Graphics'!

!GameBoard methodsFor: 'accessing' stamp: 'dhn 7/5/2013 15:00'!
board
	"Answer the value of board"

	^ board! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 7/5/2013 15:00'!
board: anObject
	"Set the value of board"

	board := anObject! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 7/5/2013 15:02'!
cells

	^ cells! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 7/5/2013 15:02'!
cells: anObject

	cells := anObject! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 7/5/2013 15:02'!
handler

	^ handler! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 7/5/2013 15:02'!
handler: anObject

	handler := anObject! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 11/2/2014 16:55'!
pasteUp

	^ pasteUp! !

!GameBoard methodsFor: 'accessing' stamp: 'dhn 11/2/2014 16:55'!
pasteUp: anObject

	pasteUp := anObject! !


!GameBoard methodsFor: 'initialization' stamp: 'dhn 11/3/2014 13:51'!
initialize
	super initialize.
	self name: self class name;
		openInWorld;
		color: self class boardColor;
		extent: (World width)@(World height * 0.8);
		sticky: true;
		addMorph: (board := PasteUpMorph new 
			color: Color transparent;
			layoutPolicy: ProportionalLayout new;
			extent: self extent)
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

GameBoard class
	instanceVariableNames: ''!

!GameBoard class methodsFor: 'as yet unclassified' stamp: 'dhn 5/17/2014 13:46'!
gameFont
	"Answer the font for balloon help"
	^ StrikeFont familyName: #ComicPlain size: 17! !

!GameBoard class methodsFor: 'as yet unclassified' stamp: 'dhn 9/22/2014 12:58'!
oldGoal
	OldGoal ifNil: [^ self defaultGoal].
	^ OldGoal! !

!GameBoard class methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2014 18:01'!
oldGoal: anObject
	OldGoal := anObject! !


SimpleButtonMorph subclass: #GameButtonMorph
	instanceVariableNames: 'oldTarget enabled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!GameButtonMorph commentStamp: 'dhn 9/3/2013 20:13' prior: 0!
A GameButtonMorph can be disabled and enabled.!


!GameButtonMorph methodsFor: 'as yet unclassified' stamp: 'dhn 10/12/2011 16:24'!
disableButton
	self enabled ifTrue: [
		self oldTarget: self target.
		self target: nil.
		self enabled: false.
		self recolor: GameButtonMorph disabledColor.
		].! !

!GameButtonMorph methodsFor: 'as yet unclassified' stamp: 'dhn 9/3/2013 20:10'!
enableButton
	self enabled ifFalse: [
		oldTarget ifNotNil: [self target: oldTarget].
		self enabled: true.
		self recolor: GameButtonMorph enabledColor.
		].! !

!GameButtonMorph methodsFor: 'as yet unclassified' stamp: 'dhn 9/3/2013 19:44'!
initialize
	super initialize! !


!GameButtonMorph methodsFor: 'accessing' stamp: 'dhn 10/12/2011 16:05'!
enabled
	"Answer the value of enabled"

	enabled ifNil: [enabled := true].
	^ enabled! !

!GameButtonMorph methodsFor: 'accessing' stamp: 'dhn 10/12/2011 16:04'!
enabled: aBoolean
	"Set the value of enabled"

	enabled := aBoolean! !

!GameButtonMorph methodsFor: 'accessing' stamp: 'dhn 10/12/2011 16:03'!
oldTarget: anObject
	"Set the value of oldTarget"

	oldTarget := anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

GameButtonMorph class
	instanceVariableNames: ''!

!GameButtonMorph class methodsFor: 'as yet unclassified' stamp: 'dhn 10/12/2011 16:26'!
disabledColor
	^Color veryLightGray! !

!GameButtonMorph class methodsFor: 'as yet unclassified' stamp: 'dhn 10/12/2011 16:29'!
enabledColor
	^Color r: 0.4 g: 0.8 b: 0.6! !


Model subclass: #ListModel
	instanceVariableNames: 'collection selectedItem text1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!ListModel commentStamp: 'dhn 12/11/2013 19:56' prior: 0!
An abstract class for windows with a list.!


!ListModel methodsFor: 'text view 1' stamp: 'dhn 12/10/2013 21:07'!
accept1: string from: aPluggableTextMorph 
	"Sent by a PluggableTextMorph to tell that its string has changed and
	can now be taken by the receiver. 
	This method is sent from method accept of the PluggableTextMorph,
	a method that is frequently used as a menu activity.
	This method copies the changed string into the receiver and it
	answers 'true' to tell the =PluggableTextMorph that the string was
	accepted. "
	text1 := string.
	selectedItem ~= 0
		ifTrue: [(collection at: selectedItem)
				at: 1
				put: string].
	^ true! !

!ListModel methodsFor: 'text view 1' stamp: 'dhn 12/10/2013 21:07'!
text1
	"Sent by a PluggableTextMorph to get a string to display."
	^ text1! !

!ListModel methodsFor: 'text view 1' stamp: 'dhn 12/22/2013 11:58'!
text1: aString 
	text1 := aString.
! !


!ListModel methodsFor: 'initialize-release' stamp: 'dhn 12/10/2013 21:07'!
buttonFor: aMorph target: anObject action: aSelector label: aString 
	^ aMorph target: anObject;
		 label: aString;
		 useRoundedCorners;
		 actionSelector: aSelector! !

!ListModel methodsFor: 'initialize-release' stamp: 'dhn 12/10/2013 21:12'!
initialize
	super initialize.
	text1 := ''.
	selectedItem := 0! !


!ListModel methodsFor: 'accessing' stamp: 'dhn 12/22/2013 12:21'!
collection
	^ collection! !

!ListModel methodsFor: 'accessing' stamp: 'dhn 12/10/2013 21:07'!
collection: anObject
	"Set the value of collection"

	collection := anObject! !

!ListModel methodsFor: 'accessing' stamp: 'dhn 12/10/2013 21:07'!
selectedItem
	"Answer the value of selectedItem"

	^ selectedItem! !

!ListModel methodsFor: 'accessing' stamp: 'dhn 12/10/2013 21:07'!
selectedItem: anObject
	"Set the value of selectedItem"

	selectedItem := anObject! !


!ListModel methodsFor: 'list view' stamp: 'dhn 12/10/2013 21:07'!
currentSelection
  "  Sent by a PluggableListMorph to get the current selection.
    Answer the index of the currently selected item.
    A value of 0 means that no item is currently selected. "
  ^selectedItem   
! !

!ListModel methodsFor: 'list view' stamp: 'dhn 12/10/2013 21:07'!
list
   " Sent by a PluggableListMorph to get a list to display.
     Answer a collection of strings, the items that are displayed by the morph."
 ^collection .   
! !


!ListModel methodsFor: 'common text menu' stamp: 'dhn 12/10/2013 21:07'!
menu: aMenuMorph 
	"Sent by a PluggableTextMorph to get a menu.
	In this example, all text morphs use the same menu. This is not
	always a feasible solution, but here it is."
	aMenuMorph add: 'accept' action: #accept.
	"#accept is a method of PluggableTextMorph"
	^ aMenuMorph! !


ListModel subclass: #AuctionList
	instanceVariableNames: 'soldButton startButton cancelButton endButton chanter item biddersPane buttonsPane listHeading'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
append: aString
	| str |
	str := String new writeStream.
	str nextPutAll: aString contents; cr;
		nextPutAll: text1.
	text1 := str contents.
	self  changed: #text1! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 12:00'!
assetButtons
	^ OrderedCollection new
		add: (startButton := self beginButtonFor: chanter);
		add: (soldButton := self soldAssetButtonFor: chanter);
		add: (endButton := self endAssetButtonFor: chanter);
		add: (cancelButton := self cancelButtonFor: chanter);
		yourself! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
beginButtonFor: anObject
	^ GameButtonMorph new
		target: anObject;
		label: 'Begin Auction';
		useRoundedCorners;
		disableButton;
		actionSelector: #startAssetAuction.
! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
bidderButtonsFor: anObject
	| col btn |
	col := OrderedCollection new.
	chanter mgr players do: [:each |
		btn := GameButtonMorph new.
		btn target: each;
			label: each identity;
			useRoundedCorners;
			actionSelector: #sendBid.
		col := col addLast: btn; yourself].
	^ col! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
biddersPane
	^ biddersPane! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
biddersPanel
	^ PluggablePanelMorph new
		name: 'bidders';
		borderWidth: 0;
	 	layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		layoutInset: 4 @ 0;
		cellInset: 12@5.
! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
buttonsPane
	^ buttonsPane! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
buttonsPanel
	^ PluggablePanelMorph new
		name: 'buttons';
		borderWidth: 0;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		layoutInset: 4 @ 0;
		cellInset: 12@5.
! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
cancelButton
	^ cancelButton! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
cancelButtonFor: anObject
	^ GameButtonMorph new
		target: anObject;
		label: 'Cancel';
		useRoundedCorners;
		actionSelector: #deleteAuction.
! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
chanter
	^ chanter! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
chanter: anObject
	chanter := anObject! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
endAssetButtonFor: anObject
	^ GameButtonMorph new
		target: anObject;
		label: 'End';
		useRoundedCorners;
		disableButton;
		actionSelector: #endAsset.
! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
endButton
	^ endButton! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
initialize
	super initialize! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 14:15'!
item
	^ item! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
item: anObject
	item := anObject! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/22/2013 13:35'!
itemName: aString 
	"Answer the name of the item by removing the parentheses and
	quantity at the end of aString"
	| paren |
	paren := aString
				indexOf: $(
				ifAbsent: [aString size + 1].
	^ aString copyFrom: 1 to: paren - 1! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
listHeading
	^ listHeading! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 11:40'!
removeWindowMenu: aWindow 
	| btn |
	btn := aWindow submorphs first submorphs at: 4.
	btn balloonText = 'window menu'
		ifTrue: [btn delete]! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
setSelection: anInteger 
	"Display the result of list selection"
	selectedItem := anInteger.
	self chanter bidding ifFalse: [self startingBidFor: anInteger]
		ifTrue: [selectedItem isZero ifTrue: [selectedItem := 1].
			chanter delta: (Auctioneer bidBump at: selectedItem)].
	self changed: #currentSelection;
		 changed: #text1! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
show: aString
	text1 := aString.
	self  changed: #text1! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
soldAssetButtonFor: anObject
	^ GameButtonMorph new
		target: anObject;
		label: 'Sold';
		useRoundedCorners;
		disableButton;
		actionSelector: #soldAsset.
! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
soldButton
	^ soldButton! !

!AuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 10:41'!
startButton
	^ startButton! !


Morph subclass: #MGPlotMorph
	instanceVariableNames: 'relations plotRectangle coordinatesUnitRectangle backgroundColor axesColor xLabelsAbove yLabelsLeft xLabelsMaxDecimalPlaces yLabelsMaxDecimalPlaces plotForm plottingProcess extentSharedQueue plotFormSharedQueue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGPlotMorph commentStamp: 'mg 12/11/2013 00:12' prior: 0!
A MGPlotMorph is a Morph used for creating plots. To open the morph do (you can also do it after adding the relations):
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openInWorld.
Now you need to add some relations. Either you create the MGRelation object (of one of its nonabstract subclasses), or you can use some helper methods in the relations protocol. To give an example:
	mgRelation := MGRelationOnLeftToRightBlock new.
	mgRelation block: [:x|x squared].
	mgPlotMorph addRelation: mgRelation.
For different subclasses of MGRelation see MGRelation comment.

Instance Variables
	relations:		<OrderedCollection of MGRelations>
	plotRectangle:	<Rectangle>			
	coordinatesUnitRectangle:	<Rectangle>						
	backgroundColor:	<Color>							
	axisColor:	<Color>
	xLabelsAbove:	<Boolean> 
	yLabelsLeft:	<Boolean>
	xLabelsMaxDecimalPlaces:		<Integer>
	yLabelsMaxDecimalPlaces:		<Integer>
	plotForm:	<Form>
	plottingProcess:	<Process>		
	extentSharedQueue:	<SharedQueue2 of Points>		
	plotFormSharedQueue:	<SharedQueue2 of Forms>

relations
	- an ordered collection of relations to plot

plotRectangle
	- a rectangle describing the plotting area

coordinatesUnitRectangle
	- a rectangle describing the units  of the axes and the origin of the plot

backgroundColor
	- the color of the background
	
axesColor
	- the color of the axes and the  numbers

xLabelsAbove
	- true if x labels should be above the axis, false if below
	
yLabelsLeft
	- true if y labels should be to the left of the axis, false if to the right
	
xLabelsMaxDecimalPlaces
	- maximal number of decimal places in x labels
	
yLabelsMaxDecimalPlaces
	- maximal number of decimal places in y labels

plotForm
	- a form used for caching the plot data

plottingProcess
	- the plotting process
	
extentSharedQueue
	- used for interprocess communication with the plotting process
		
plotFormSharedQueue
	- used for interprocess communication with the plotting process!


!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/7/2013 13:48'!
addRelation: anMGRelation
	"Add an MGRelation to the plot."
	relations add: anMGRelation.
	anMGRelation addDependent: self.
	self rememberToReplot.
	^ anMGRelation! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/10/2013 11:17'!
addRelationOn2DBlock: aBlock
	"Convenience method for fast adding an MGRelationOn2DBlock."
	^self addRelation: (MGRelationOn2DBlock new block: aBlock)! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/10/2013 11:17'!
addRelationOnCollection: aCollection
	"Convenience method for fast adding an MGRelationOnCollection."
	^self addRelation: (MGRelationOnCollection new collection: aCollection).
! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/10/2013 11:18'!
addRelationOnCollectionWithIcons: aCollection
	"Convenience method for fast adding an MGRelationOnCollectionWithIcons."
	^self addRelation: (MGRelationOnCollectionWithIcons new collection: aCollection).
! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/10/2013 11:18'!
addRelationOnLeftToRightBlock: aBlock
	"Convenience method for fast adding an MGRelationOnLeftToRightBlock."
	^self addRelation:(MGRelationOnLeftToRightBlock new block: aBlock).! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/10/2013 11:18'!
addRelationOnTopToBottomBlock: aBlock
	"Convenience method for fast adding an MGRelationOnTopToBottomBlock."
	^self addRelation: (MGRelationOnTopToBottomBlock new block: aBlock).
! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/7/2013 13:50'!
relations
	"Return the ordered collection of MGRelations"
	^relations asArray! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/7/2013 13:50'!
removeAllRelations
	"Remove all MGRelations from a plot."
	relations do:
	[:relation|
		relation removeDependent: self
	].
	relations removeAll.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'relations' stamp: 'mg 12/7/2013 13:51'!
removeRelation: anMGRelation
	"Remove an MGRelation from the plot."
	relations remove: anMGRelation.
	anMGRelation removeDependent: self.
	self rememberToReplot.! !


!MGPlotMorph methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:23'!
axesColor
	"Return the color of the axes and the numbers"
	^ axesColor! !

!MGPlotMorph methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:23'!
axesColor: aColor
	"Set the color of the axes and the numbers"
	axesColor := aColor.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'accessing' stamp: 'mg 12/7/2013 13:52'!
backgroundColor
	"Return the color of the background"
	^ backgroundColor! !

!MGPlotMorph methodsFor: 'accessing' stamp: 'mg 12/7/2013 13:52'!
backgroundColor: aColor
	"Set the color of the background"
	backgroundColor := aColor.
	self rememberToReplot.! !


!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/10/2013 23:57'!
drawCoordinatesOn: aCanvas transformation: aPlotToFormTransformation
	|transformedCoordinatesUnitRectangle xAxisY yAxisX maxXPoint maxYPoint xUnit yUnit|
	transformedCoordinatesUnitRectangle := aPlotToFormTransformation 
		toFormRectangle: coordinatesUnitRectangle.
	xAxisY := transformedCoordinatesUnitRectangle origin y.
	yAxisX := transformedCoordinatesUnitRectangle origin x.
	maxXPoint := aCanvas extent x @ xAxisY.			
	maxYPoint := yAxisX @ aCanvas extent y.				
	xUnit := transformedCoordinatesUnitRectangle width.		
	yUnit := transformedCoordinatesUnitRectangle height negated.			
	self 
		drawXAxisOn: aCanvas 
		transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
		yAxisX: yAxisX
		xAxisY: xAxisY 		
		xUnit: xUnit.
	self drawYAxisOn: aCanvas
		transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
		xAxisY: xAxisY 
		yAxisX: yAxisX
		yUnit: yUnit.! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 01:37'!
drawXAxisOn: aCanvas 
transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
yAxisX: yAxisX
xAxisY: xAxisY 
xUnit: xUnit
	|maxXPoint|
	maxXPoint := (aCanvas extent x @ xAxisY) asIntegerPoint.
	aCanvas 
		line: (0@ xAxisY) asIntegerPoint
		to: maxXPoint
		color: axesColor.
	aCanvas
		drawPolygon: 
		{
			maxXPoint.
			maxXPoint + (-11 @ 3).
			maxXPoint + (-11 @ -3)
		}
		color: axesColor
		borderWidth: 1
		borderColor: axesColor.
	self
		drawXCoordinatesOn: aCanvas 
		transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
		xAxisY: xAxisY 
		xStart: yAxisX - xUnit
		xStop: xUnit
		xStep: xUnit negated.
	self
		drawXCoordinatesOn: aCanvas 
		transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
		xAxisY: xAxisY 
		xStart: yAxisX + xUnit
		xStop: maxXPoint x - xUnit
		xStep: xUnit.! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 00:51'!
drawXCoordinatesOn: aCanvas 
transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
xAxisY: xAxisY 
xStart: xStart
xStop: xStop
xStep: xStep
	|counter label|
	counter := xStep sign.
	xStart to: xStop by: xStep  do:
	[:x|
		aCanvas
			line: (x @ (xAxisY - 5)) asIntegerPoint
			to: (x @ (xAxisY + 5)) asIntegerPoint
			color: axesColor.
		label := self stringForXCoordinateNumbered: counter.
		aCanvas
			drawString: label
			at: (x @ xAxisY + (self xCorrectionForLabel: label)) asIntegerPoint
			font: nil
			color: axesColor.
		counter :=counter + xStep sign
	].! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 01:40'!
drawYAxisOn: aCanvas 
transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
xAxisY: xAxisY 
yAxisX: yAxisX
yUnit: yUnit
	|maxYPoint|
	maxYPoint := (yAxisX @ 0) asIntegerPoint.
	aCanvas 
		line: maxYPoint
		to: (yAxisX @ aCanvas extent y) asIntegerPoint
		color: axesColor.
	aCanvas
		drawPolygon: 
		{
			maxYPoint.
			maxYPoint + (3 @ 11).
			maxYPoint + (-3 @ 11)
		}
		color: axesColor
		borderWidth: 1
		borderColor: axesColor.
	self
		drawYCoordinatesOn: aCanvas 
		transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
		yAxisX: yAxisX
		yStart: xAxisY - yUnit
		yStop: yUnit
		yStep: yUnit negated.
	self
		drawYCoordinatesOn: aCanvas 
		transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
		yAxisX: yAxisX
		yStart: xAxisY + yUnit
		yStop: aCanvas extent y -yUnit
		yStep: yUnit.		! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 00:50'!
drawYCoordinatesOn: aCanvas 
transformedCoordinatesUnitRectangle: transformedCoordinatesUnitRectangle
yAxisX: yAxisX
yStart: yStart
yStop: yStop
yStep: yStep
	|counter label|
	counter := yStep sign negated.
	yStart  to: yStop by: yStep do:
	[:y|
		aCanvas
			line: ((yAxisX - 5) @ y) asIntegerPoint
			to: ((yAxisX + 5)  @ y) asIntegerPoint
			color: axesColor.
		label := self stringForYCoordinateNumbered: counter.
		aCanvas
			drawString: label
			at: (yAxisX @ y + (self yCorrectionForLabel: label)) asIntegerPoint
			font: nil
			color: axesColor.
		counter :=counter  + yStep sign negated
	].! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/10/2013 10:44'!
newFormForExtent: aPoint
	|canvas transform newPlotForm|
	newPlotForm := Form extent: aPoint depth: 32.
	newPlotForm fillColor: backgroundColor.
	canvas := newPlotForm getCanvas.
	transform := MGPlotToFormTransformation 
		plotRectangle: plotRectangle
		formRectangle: (0@0 extent: aPoint).
	relations do:
	[:relation|
		relation drawOn: canvas transformation: transform.
	].
	self drawCoordinatesOn: canvas transformation: transform.
	^ newPlotForm.
	
	
	! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 00:13'!
stringForXCoordinateNumbered: anInteger
	|number|
	number := (anInteger * coordinatesUnitRectangle width + coordinatesUnitRectangle origin x).
	xLabelsMaxDecimalPlaces 
	ifNil: [^number asString]
	ifNotNil: [^number printShowingMaxDecimalPlaces: xLabelsMaxDecimalPlaces]! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 00:13'!
stringForYCoordinateNumbered: anInteger
	|number|
	number := (anInteger * coordinatesUnitRectangle height + coordinatesUnitRectangle origin y).
	yLabelsMaxDecimalPlaces 
	ifNil: [^number asString]
	ifNotNil: [^number printShowingMaxDecimalPlaces: yLabelsMaxDecimalPlaces]
	! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 01:22'!
xCorrectionForLabel: aString
	|font width height lastWidth|
	font := TextStyle default defaultFont.
	width :=  font widthOfString: aString.
	height := font height.
	lastWidth := font widthOf: aString last.
	^(width negated + (lastWidth // 2) + 2)
	@
	(
		xLabelsAbove 
			ifTrue: [height negated - 6]
			ifFalse: [7]
	)	
	
	! !

!MGPlotMorph methodsFor: 'private form drawing' stamp: 'mg 12/11/2013 01:18'!
yCorrectionForLabel: aString
	|font width height minusWidth|
	font := TextStyle default defaultFont.
	width :=  font widthOfString: aString.
	height := font height.
	minusWidth := font widthOf: $-.
	^(
		yLabelsLeft
		ifTrue: [width negated - 6]
		ifFalse: 
		[
			aString first = $- 
			ifTrue: [8]
			ifFalse: [minusWidth + 8]
		]
	)
	@	
	(height negated // 2)
! !


!MGPlotMorph methodsFor: 'private morph drawing' stamp: 'mg 12/10/2013 10:42'!
drawOn: aCanvas
	(plotForm notNil and: [plotForm extent = self extent]) 
	ifTrue: 
	[
		aCanvas drawImage: plotForm at: self position
	]
	ifFalse:
	[
		self rememberToReplot.
		aCanvas fillRectangle: self bounds color: backgroundColor 
	].! !


!MGPlotMorph methodsFor: 'private initialize-release' stamp: 'dhn 12/30/2013 22:12'!
initialize
	super initialize.
	extentSharedQueue := SharedQueue2 new.
	plotFormSharedQueue := SharedQueue2 new.
	plottingProcess := [self plottingLoop] fork.! !

!MGPlotMorph methodsFor: 'private initialize-release' stamp: 'mg 12/11/2013 02:19'!
privateDelete
	|process|
	super privateDelete.
	process := plottingProcess.
	plottingProcess := nil.
	process ifNotNil: [process terminate].! !


!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 11:01'!
originPoint
	"Return the origin of the plot in the plotting space."
	^coordinatesUnitRectangle origin! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 11:01'!
originPoint: aPoint
	"Set the origin of the plot in the plotting space."
	coordinatesUnitRectangle := aPoint extent: (coordinatesUnitRectangle extent).
	self rememberToReplot! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/7/2013 13:55'!
units
	"Return a Point which shows the units on the x and y axes."
	^ coordinatesUnitRectangle extent.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/7/2013 13:55'!
units: aPoint
	"Return units for both x and y axes."
	coordinatesUnitRectangle := coordinatesUnitRectangle origin extent: aPoint.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:19'!
xLabelsAbove
	"Make x coordinate labels to be above the axis."
	xLabelsAbove := true.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:19'!
xLabelsBelow
	"Make x coordinate labels to be below the axis."
	xLabelsAbove := false.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:07'!
xLabelsMaxDecimalPlaces
	"Get the number of decimal places while displaying x coordinate labels"
	^ xLabelsMaxDecimalPlaces! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:19'!
xLabelsMaxDecimalPlaces: anInteger
	"Set the number of decimal places while displaying x coordinate labels"
	xLabelsMaxDecimalPlaces := anInteger.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:51'!
xMax
	"Return the maximum value on the x axis"
	^ plotRectangle right! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:51'!
xMax: aNumber
	"Set the maximum value on the x axis"
	plotRectangle := plotRectangle right: aNumber.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:51'!
xMin
	"Return the minimum value on the x axis"
	^ plotRectangle left! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:52'!
xMin: aNumber
	"Set the minimum value on the x axis"
	plotRectangle := plotRectangle left: aNumber.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:57'!
xRange
	"Return the range of the x axis"
	^ plotRectangle left @ plotRectangle right! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:20'!
xRange: aPoint
	"Set the range of the x axis"
	plotRectangle left: aPoint x.
	plotRectangle right: aPoint y.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/7/2013 13:55'!
xUnit
	"Return the unit of the x axis."
	^coordinatesUnitRectangle width! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/7/2013 13:56'!
xUnit: aNumber
	"Set the unit of the x axis."
	coordinatesUnitRectangle := coordinatesUnitRectangle origin 
		extent: aNumber @ coordinatesUnitRectangle extent y.
	self rememberToReplot.! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:20'!
yLabelsLeft
	"Make y coordinate labels to be to the left of the axis."
	yLabelsLeft := true.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:08'!
yLabelsMaxDecimalPlaces
	"Get the number of decimal places while displaying y coordinates"
	^ yLabelsMaxDecimalPlaces! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:20'!
yLabelsMaxDecimalPlaces: anInteger
	"Set the number of decimal places while displaying y coordinates"
	yLabelsMaxDecimalPlaces := anInteger.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:20'!
yLabelsRight
	"Make y coordinate labels to be to the right of the axis."
	yLabelsLeft := false.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:51'!
yMax
	"Return the maximum value on the y axis"
	^ plotRectangle top negated! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:51'!
yMax: aNumber
	"Set the maximum value on the y axis"
	plotRectangle := plotRectangle top: aNumber negated.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:52'!
yMin
	"Return the minimum value on the y axis"
	^ plotRectangle bottom negated! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 10:52'!
yMin: aNumber
	"Set the maximum value on the y axis"
	plotRectangle := plotRectangle bottom: aNumber negated.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/10/2013 11:00'!
yRange
	"Return the range of the y axis"
	^ plotRectangle bottom negated @ plotRectangle top negated! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/11/2013 00:21'!
yRange: aPoint
	"Set the range of the y axis"
	plotRectangle bottom: aPoint x negated.
	plotRectangle top: aPoint y negated.
	self rememberToReplot.	! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/7/2013 13:56'!
yUnit
	"Return the unit of the y axis."
	^coordinatesUnitRectangle height! !

!MGPlotMorph methodsFor: 'coordinate system' stamp: 'mg 12/7/2013 13:56'!
yUnit: aNumber
	"Set the unit of the y axis."
	coordinatesUnitRectangle := coordinatesUnitRectangle origin 
		extent: coordinatesUnitRectangle extent x @ aNumber.
	self rememberToReplot.! !


!MGPlotMorph methodsFor: 'private processes' stamp: 'mg 12/6/2013 22:10'!
plottingLoop
	|extent|
	[
		extent := extentSharedQueue nextOrNil.
		extent ifNotNil:
		[
			plotFormSharedQueue nextPut: (self newFormForExtent: extent)
		].
		plottingProcess suspend
	] repeat.! !


!MGPlotMorph methodsFor: 'plotting' stamp: 'mg 12/10/2013 11:17'!
rememberToReplot
	"Remember to redraw the plot, when all points get calculated"
	extentSharedQueue isEmpty ifTrue: [extentSharedQueue nextPut: self extent].
	
	! !


!MGPlotMorph methodsFor: 'private stepping and presenter' stamp: 'mg 12/11/2013 01:44'!
step
	plotFormSharedQueue isEmpty
	ifFalse:
	[
		[plotFormSharedQueue isEmpty] 
		whileFalse:
		[plotForm := plotFormSharedQueue next].
		self changed
	].
	plottingProcess ifNotNil:[plottingProcess resume]! !


!MGPlotMorph methodsFor: 'private testing' stamp: 'mg 12/10/2013 12:13'!
stepTime
	^100! !


!MGPlotMorph methodsFor: 'private updating' stamp: 'mg 12/1/2013 16:02'!
update: aParameter
	self rememberToReplot! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MGPlotMorph class
	instanceVariableNames: ''!

!MGPlotMorph class methodsFor: 'examples' stamp: 'mg 12/11/2013 02:21'!
example1
	|mgPlotMorph mgRelationOnLeftToRightBlock|
	"Do it!! MGPlotMorph example1."
	
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openInWindowLabeled: 'A plot'.	

	mgRelationOnLeftToRightBlock := MGRelationOnLeftToRightBlock new.
	mgRelationOnLeftToRightBlock continuous.
	mgRelationOnLeftToRightBlock color: Color blue.
	mgRelationOnLeftToRightBlock block: [:x|x squared].
	mgPlotMorph addRelation: mgRelationOnLeftToRightBlock.		
	
	! !


MGPlotMorph subclass: #GamePlot
	instanceVariableNames: 'graph mgr'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!GamePlot methodsFor: 'as yet unclassified' stamp: 'dhn 9/30/2014 15:40'!
graph
	^ graph! !

!GamePlot methodsFor: 'as yet unclassified' stamp: 'dhn 9/30/2014 15:40'!
graph: anObject
	graph := anObject! !

!GamePlot methodsFor: 'as yet unclassified' stamp: 'dhn 9/30/2014 15:41'!
initialize
	super initialize.
! !

!GamePlot methodsFor: 'as yet unclassified' stamp: 'dhn 11/19/2014 16:36'!
scaleXAxis
	"Answer the index of the x-axis length based on the player's turns"
	^ #(100 300 500) findFirst: [:a | a > mgr currentPlayer turns]! !


!GamePlot methodsFor: 'accessing' stamp: 'dhn 6/8/2014 21:22'!
mgr

	^ mgr! !

!GamePlot methodsFor: 'accessing' stamp: 'dhn 9/30/2014 15:41'!
mgr: anObject
	mgr := anObject.
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

GamePlot class
	instanceVariableNames: ''!

!GamePlot class methodsFor: 'as yet unclassified' stamp: 'dhn 6/6/2014 20:09'!
plotSeries: aPointOrderedCollection 
	| plotMorph |
	plotMorph := PlotMorph new.
	plotMorph color: Color white;
		 title: 'Player''s Net Assets';
		 extent: 700 @ 700;
		 borderRaised.
	plotMorph series: #series color: Color red;
		 series: #series width: 2;
		 series: #series drawLine: true.
	aPointOrderedCollection
		do: [:e | ""
			plotMorph series: #series addPoint: e].
	plotMorph openInWorld.
	^ plotMorph! !


Object subclass: #MGPlotToFormTransformation
	instanceVariableNames: 'toPlotMatrix toFormMatrix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGPlotToFormTransformation commentStamp: 'mg 12/7/2013 14:03' prior: 0!
A MGPlotToFormTransformation is a class for performing the transformation from the plot space to the space of the pixels of the form which is displayed inside an MGPlotMorph.

Instance Variables
	toFormMatrix:		<Matrix>
	toPlotMatrix:		<Matrix>

toFormMatrix
	- a matrix for transforming from the plot to the form

toPlotMatrix
	- a matrix for transforming from the form to the plot
!


!MGPlotToFormTransformation methodsFor: 'private initialize-release' stamp: 'mg 12/1/2013 02:07'!
calculateToFormMatrixUsingPlotRectangle: plotRectangle formRectangle: formRectangle
	|pm0 pm1 pm2 pm3|
	pm0 := Matrix
		rows: 3 
		columns: 3 
		contents:
		{
			1.  0. 0.
			0. -1. 0.
			0.  0. 1
		}.
	pm1 := Matrix 
		rows: 3 
		columns: 3 
		contents:
		{
			1. 0. plotRectangle origin x negated.
			0. 1. plotRectangle origin y negated.
			0. 0. 1
		}.
	pm2 := Matrix 
		rows: 3 
		columns: 3 
		contents:
		{
			(formRectangle corner x - formRectangle origin x) 
			/ (plotRectangle corner x - plotRectangle origin x). 0. 0.
			0. (formRectangle corner y - formRectangle origin y) 
			/ (plotRectangle corner y - plotRectangle origin y). 0.
			0. 0. 1
		}.		
	pm3 := Matrix 
		rows: 3 
		columns: 3 
		contents:
		{
			1. 0. formRectangle origin x.
			0. 1. formRectangle origin y.
			0. 0. 1
		}.
	toFormMatrix := (pm3 +* pm2 +*  pm1 +* pm0) atRows: 1 to: 2 columns: 1 to: 3.! !

!MGPlotToFormTransformation methodsFor: 'private initialize-release' stamp: 'mg 12/1/2013 02:05'!
calculateToPlotMatrixUsingPlotRectangle: plotRectangle formRectangle: formRectangle
	|mp0 mp1 mp2 mp3|
	mp0 := Matrix
		rows: 3 
		columns: 3 
		contents:
		{
			1.  0. 0.
			0. -1. 0.
			0.  0. 1
		}.
	mp1 := Matrix 
		rows: 3 
		columns: 3 
		contents:
		{
			1. 0. formRectangle origin x negated.
			0. 1. formRectangle origin y negated.
			0. 0. 1
		}.
	mp2 := Matrix 
		rows: 3 
		columns: 3 
		contents:
		{
			(plotRectangle corner x - plotRectangle origin x) 
			/ (formRectangle corner x - formRectangle origin x). 0. 0.
			0. (plotRectangle corner y - plotRectangle origin y) 
			/ (formRectangle corner y - formRectangle origin y). 0.
			0. 0. 1
		}.		
	mp3 := Matrix 
		rows: 3 
		columns: 3 
		contents:
		{
			1. 0. plotRectangle origin x.
			0. 1. plotRectangle origin y.
			0. 0. 1
		}.
	toPlotMatrix := (mp0 +* mp3 +* mp2 +*  mp1) atRows: 1 to: 2 columns: 1 to: 3.! !

!MGPlotToFormTransformation methodsFor: 'private initialize-release' stamp: 'mg 12/1/2013 02:08'!
plotRectangle: plotRectangle formRectangle: formRectangle
	self calculateToFormMatrixUsingPlotRectangle: plotRectangle formRectangle: formRectangle.
	self calculateToPlotMatrixUsingPlotRectangle: plotRectangle formRectangle: formRectangle.	
! !


!MGPlotToFormTransformation methodsFor: 'transformation' stamp: 'mg 12/7/2013 13:59'!
toFormPoint: aPoint
	"Apply the transformation from a plot Point to a form point and return the form Point."
	|array|
	array := toFormMatrix +* {aPoint x. aPoint y. 1}.
	^ array first @ array last! !

!MGPlotToFormTransformation methodsFor: 'transformation' stamp: 'mg 12/7/2013 14:00'!
toFormPoints: aCollection
	"Apply the transformation from plot Points to form Points and return the form Points."
	^aCollection collect: [:aPoint| self toFormPoint: aPoint].! !

!MGPlotToFormTransformation methodsFor: 'transformation' stamp: 'mg 12/7/2013 14:01'!
toFormRectangle: aRectangle
	"Apply the transformation from plot Rectangle to form Rectangle and return the form Rectangle."
	^(self toFormPoint: aRectangle origin) corner: (self toFormPoint: aRectangle corner)! !

!MGPlotToFormTransformation methodsFor: 'transformation' stamp: 'mg 12/7/2013 13:59'!
toPlotPoint: aPoint
	"Apply the transformation from a form Point to a plot point and return the plot Point."
	|array|
	array := toPlotMatrix +* {aPoint x. aPoint y. 1}.
	^ array first @ array last! !

!MGPlotToFormTransformation methodsFor: 'transformation' stamp: 'mg 12/7/2013 14:00'!
toPlotPoints: aCollection
	"Apply the transformation from form Points to plot Points and return the plot Points."
	^aCollection collect: [:aPoint| self toPlotPoint: aPoint].! !

!MGPlotToFormTransformation methodsFor: 'transformation' stamp: 'mg 12/7/2013 14:01'!
toPlotRectangle: aRectangle
	"Apply the transformation from form Rectangle to plot Rectangle and return the plot Rectangle."
	^(self toPlotPoint: aRectangle origin) corner: (self toPlotPoint: aRectangle corner)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MGPlotToFormTransformation class
	instanceVariableNames: ''!

!MGPlotToFormTransformation class methodsFor: 'instance creation' stamp: 'mg 12/7/2013 13:58'!
plotRectangle: plotRectangle formRectangle: formRectangle
	"Return a new transformation between plotRectangle and formRectangle."
	^ self new plotRectangle: plotRectangle formRectangle: formRectangle! !


Object subclass: #MGPoint
	instanceVariableNames: 'point pointIcon'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGPoint commentStamp: 'mg 12/7/2013 14:07' prior: 0!
A MGPoint is a class which keeps both a point and its symbols as its private variables. It is used in while using the MGRelationOnCollectionWithIcons.

Instance Variables
	point:	<Point>
	pointIcon:	<MGPointIcon>

point
	- a Point

pointIcon
	- an icon of the point
!


!MGPoint methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:05'!
point
	"Return a point."
	^ point! !

!MGPoint methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:05'!
point: aPoint
	"Set a point."
	point := aPoint! !

!MGPoint methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:06'!
pointIcon
	"Return a MGPointIcon of the point."
	^ pointIcon! !

!MGPoint methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:06'!
pointIcon: anMGPointIcon
	"Set a MGPointIcon of the point."
	pointIcon := anMGPointIcon! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MGPoint class
	instanceVariableNames: ''!

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:27'!
bigCrossPoint: aPoint
	^self new point: aPoint; pointIcon: MGCrossPointIcon big! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:29'!
bigCrossPoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGCrossPointIcon bigWithColor: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:27'!
bigRectanglePoint: aPoint
	^self new point: aPoint; pointIcon: MGRectanglePointIcon big! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:29'!
bigRectanglePoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGRectanglePointIcon bigWithColor: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:24'!
crossPoint: aPoint
	^self new point: aPoint; pointIcon: MGCrossPointIcon new! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 10:51'!
crossPoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGCrossPointIcon color: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:30'!
crossPoint: aPoint1 color: aColor extent: aPoint2
	^self new point: aPoint1; pointIcon: (MGCrossPointIcon color: aColor extent: aPoint2)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:37'!
crossPoint: aPoint1 extent: aPoint2
	^self new point: aPoint1; pointIcon: (MGCrossPointIcon extent: aPoint2)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:24'!
dotPoint: aPoint
	^self new point: aPoint; pointIcon: MGDotPointIcon new! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 10:51'!
dotPoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGDotPointIcon color: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:26'!
dotPoint: aPoint1 color: aColor extent: aPoint2
	^self new point: aPoint1; pointIcon: (MGDotPointIcon color: aColor; extent: aPoint2)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:27'!
mediumCrossPoint: aPoint
	^self new point: aPoint; pointIcon: MGCrossPointIcon medium! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:28'!
mediumCrossPoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGCrossPointIcon mediumWithColor: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:26'!
mediumRectanglePoint: aPoint
	^self new point: aPoint; pointIcon: MGRectanglePointIcon medium! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:29'!
mediumRectanglePoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGRectanglePointIcon mediumWithColor: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 10:43'!
point: aPoint pointIcon: aPointIcon
	^self new point: aPoint; pointIcon: aPointIcon ! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:24'!
rectanglePoint: aPoint
	^self new point: aPoint; pointIcon: MGRectanglePointIcon new! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:13'!
rectanglePoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGRectanglePointIcon color: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:30'!
rectanglePoint: aPoint1 color: aColor extent: aPoint2
	^self new point: aPoint1; pointIcon: (MGRectanglePointIcon color: aColor extent: aPoint2)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:37'!
rectanglePoint: aPoint1 extent: aPoint2
	^self new point: aPoint1; pointIcon: (MGRectanglePointIcon extent: aPoint2)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:27'!
smallCrossPoint: aPoint
	^self new point: aPoint; pointIcon: MGCrossPointIcon small! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:28'!
smallCrossPoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGCrossPointIcon smallWithColor: aColor)! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:26'!
smallRectanglePoint: aPoint
	^self new point: aPoint; pointIcon: MGRectanglePointIcon small! !

!MGPoint class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:29'!
smallRectanglePoint: aPoint color: aColor
	^self new point: aPoint; pointIcon: (MGRectanglePointIcon smallWithColor: aColor)! !


Object subclass: #MGPointIcon
	instanceVariableNames: 'color extent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGPointIcon commentStamp: 'mg 12/7/2013 14:09' prior: 0!
A MGPointIcon is a class of icons used for displaying points inside an MGPlotMorph. You can subclass this class
to add additional ways of displaying points inside the plot.

Instance Variables
	color:	<Color>
	extent:	<Point>

color
	- the color of the point

extent
	- the extent of the icon (a user can resize the icon by setting this)
!


!MGPointIcon methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:10'!
color
	"Return the color of the icon."
	^ color ! !

!MGPointIcon methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:10'!
color: aColor
	"Set the color of the icon."
	color := aColor! !

!MGPointIcon methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:11'!
extent
	"Return the extent of the icon as a Point."
	^ extent! !

!MGPointIcon methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:10'!
extent: aPoint
	"Return the extent of the icon."
	extent := aPoint! !


!MGPointIcon methodsFor: 'private drawing' stamp: 'mg 12/1/2013 15:02'!
drawOn: aCanvas at: aPoint
	self subclassResponsibility! !


!MGPointIcon methodsFor: 'private initialize-release' stamp: 'mg 12/7/2013 15:28'!
initialize
	super initialize.
	color := Color black.
	extent := 5@5.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

MGPointIcon class
	instanceVariableNames: ''!

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:28'!
big
	^ self new extent: 8@8! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:28'!
bigWithColor: aColor
	^ self new extent: 8@8; color: aColor! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/1/2013 15:09'!
color: aColor
	^ self new color: aColor! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:17'!
color: aColor extent: aPoint
	^ self new color: aColor; extent: aPoint! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:17'!
extent: aPoint
	^ self new extent: aPoint! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:20'!
medium
	^ self new extent: 4@4! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:19'!
mediumWithColor: aColor
	^ self new extent: 4@4; color: aColor! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:20'!
small
	^ self new extent: 1@1! !

!MGPointIcon class methodsFor: 'instance creation' stamp: 'mg 12/2/2013 11:35'!
smallWithColor: aColor
	^ self new extent: 2@2; color: aColor! !


MGPointIcon subclass: #MGCrossPointIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGCrossPointIcon commentStamp: 'mg 12/7/2013 14:15' prior: 0!
A MGCrossPointIcon is a cross icon. For details see the MGPointIcon comment.

Instance Variables
!


!MGCrossPointIcon methodsFor: 'private drawing' stamp: 'mg 12/2/2013 11:23'!
drawOn: aCanvas at: aPoint
	aCanvas
		line: (aPoint - (extent / 2)) asIntegerPoint
		to: (aPoint + (extent / 2)) asIntegerPoint
		color: color.
	aCanvas
		line: (aPoint - (extent leftRotated / 2)) asIntegerPoint
		to: (aPoint + (extent leftRotated / 2)) asIntegerPoint
		color: color.		! !


MGPointIcon subclass: #MGDotPointIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGDotPointIcon commentStamp: 'mg 12/7/2013 14:15' prior: 0!
A MGDotPointIcon is a small one pixel dot icon. For details see the MGPointIcon comment.

Instance Variables
!


!MGDotPointIcon methodsFor: 'private drawing' stamp: 'mg 12/1/2013 15:10'!
drawOn: aCanvas at: aPoint
	aCanvas
		point: aPoint asIntegerPoint
		color: color! !


MGPointIcon subclass: #MGRectanglePointIcon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRectanglePointIcon commentStamp: 'mg 12/7/2013 14:15' prior: 0!
A MGRectanglePointIcon is a rectangle icon. For details see the MGPointIcon comment.

Instance Variables
!


!MGRectanglePointIcon methodsFor: 'private drawing' stamp: 'mg 12/2/2013 11:45'!
drawOn: aCanvas at: aPoint
	aCanvas fillRectangle: (Rectangle center: aPoint asIntegerPoint extent: extent asIntegerPoint) color: color.! !


Object subclass: #MGRelation
	instanceVariableNames: 'color isContinuous pointIcon'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelation commentStamp: 'mg 12/7/2013 14:33' prior: 0!
A MGRelation is an abstract class of relations displayable inside an MGPlotMorph.

Instance Variables
	isContinuous:		<Boolean>
	color:	<Color>
	pointIcon:	<MGPointIcon>

isContinuous
	- if it is false the relations is drawn using separate points, if true it's drawn using connected lines .

color
	- the color of the relation points/lines

pointIcon
	- the default icon of the relation points
!


!MGRelation methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:33'!
color
	"Return the color of the relation."
	^color! !

!MGRelation methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:33'!
color: aColor
	"Set the color of the relation."
	color := aColor.
	pointIcon color: aColor.
	self changed! !

!MGRelation methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:34'!
continuous
	"Use connected lines for drawing the relation."
	isContinuous := true.
	self changed.! !

!MGRelation methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:34'!
notContinuous
	"Use separate points for drawing the relation."
	isContinuous := false.
	self changed.! !

!MGRelation methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:34'!
pointIcon
	"Return the default icon of the points."
	^ pointIcon! !

!MGRelation methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:34'!
pointIcon: aPointIcon
	"Set the default icon of the points."
	pointIcon := aPointIcon.
	self changed.! !


!MGRelation methodsFor: 'private drawing' stamp: 'mg 12/1/2013 02:53'!
drawOn: aCanvas transformation: aPlotToFormTransformation
	isContinuous 
	ifTrue:
	[
		self drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	]
	ifFalse:
	[
		self drawNotContinuousOn: aCanvas transformation: aPlotToFormTransformation	
	]! !


!MGRelation methodsFor: 'private initialize-release' stamp: 'mg 12/7/2013 14:24'!
initialize
	super initialize.
	color := Color black.
	isContinuous := false.
	pointIcon := MGDotPointIcon color: color.! !


!MGRelation methodsFor: 'testing' stamp: 'mg 12/7/2013 14:35'!
isContinuous
	"Return true if the relation is drawn by using connected lines, false if by using separate points."
	^ isContinuous! !


MGRelation subclass: #MGRelationOnBlock
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOnBlock commentStamp: 'mg 12/7/2013 15:37' prior: 0!
A MGRelationOnBlock is an abstract class for plotting by using data from a block.

Instance Variables
	block:		<BlockClosure>

block
	- the block used for plotting
!


!MGRelationOnBlock methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:37'!
block
	"Return the block used to calculate plot values."
	^block! !

!MGRelationOnBlock methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:37'!
block: aBlock
	"Set the block used to calculate plot values."
	block := aBlock.
	self changed.! !


MGRelationOnBlock subclass: #MGRelationOn1DBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOn1DBlock commentStamp: 'mg 12/7/2013 14:38' prior: 0!
A MGRelationOn1DBlock is an abstract class used for plotting with a block, which takes one argument.

Instance Variables
!


!MGRelationOn1DBlock methodsFor: 'private initialize-release' stamp: 'mg 12/2/2013 11:52'!
initialize
	super initialize.
	block := [:a|a].! !


!MGRelationOn1DBlock methodsFor: 'private calculating block values' stamp: 'mg 12/2/2013 11:51'!
valuesFor: anObject
		|values|
		values := block value: anObject.
		true caseOf:
		{
			[values isNil] -> [^{}].
			[values isCollection] -> [^values]
		}
		otherwise: [^{values}].
		! !


MGRelationOnBlock subclass: #MGRelationOn2DBlock
	instanceVariableNames: 'minimalStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOn2DBlock commentStamp: 'mg 12/7/2013 20:45' prior: 0!
A MGRelationOn2DBlock is aclass used for plotting with a block, which takes two arguments, which are two coordinates x and y. The block returns a value between 0 and 1, which shows the 1-alpha of the color used 
for plotting. It means it is really a 3D plot, but who cares :-P

Example:
	|mgPlotMorph mgRelationOn2DBlock|
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openCenteredInWorld.
	mgRelationOn2DBlock := MGRelationOn2DBlock new
		color: Color blue;
		minimalStep: 0.1;
		block: [:x :y|(x@y) r ln min: 1.0 max: 0.0].
	mgPlotMorph addRelation: mgRelationOn2DBlock.


Calculating the value  of a plot for each pixel takes much time. For this reason the minimalStep is defined.
It describes the minimal step you want to take between two points used for calculations in the plot space.
So if you set minimalStep to 1, it means the calculations will be done only for points: (0@0, 1@0, 0@1, 1@1, ...),
(unless the morph size is too small, in this case the calculations will be done for each pixel).
In general:
If calculations take too long use a bigger number for minimalStep.
The default is 0 (no minimal step).

Instance Variables
	minimalStep:		<Point>

minimalStep
	- minimal step between pixels used for calculations in the plot space (separately for x and y)
!


!MGRelationOn2DBlock methodsFor: 'private drawing' stamp: 'mg 12/7/2013 20:46'!
drawOn: aCanvas transformation: aPlotToFormTransformation
	|formXStep formYStep value zeroPoint zeroPointX zeroPointY xVersor yVersor xVersorX xVersorY yVersorX yVersorY|
	"Z optymalizacjami"
	formXStep := 1.
	formYStep := 1.
	zeroPoint := aPlotToFormTransformation toPlotPoint: 0@0.
	xVersor := (aPlotToFormTransformation toPlotPoint: 1@0) - zeroPoint.
	yVersor := (aPlotToFormTransformation toPlotPoint: 0@1) - zeroPoint.
	xVersor r < minimalStep x
	ifTrue: 
	[	
		formXStep := (
			aPlotToFormTransformation 
				toFormPoint: zeroPoint + (xVersor normalized * minimalStep x)
		) r ceiling.			
	].
	yVersor r < minimalStep y
	ifTrue: 
	[			
		formYStep := (
			aPlotToFormTransformation 
				toFormPoint: zeroPoint + (yVersor normalized * minimalStep y)
		) r ceiling.			
	].
	
	xVersorX := xVersor x.
	xVersorY := xVersor y.	
	zeroPointX := zeroPoint x.
	zeroPointY := zeroPoint y.	
	yVersorX := yVersor x.
	yVersorY := yVersor y.	
	0 to: aCanvas extent x  by: formXStep do:
	[:x|
		0 to: aCanvas extent y by: formYStep do:
		[:y||xSrodka ySrodka|
			xSrodka := x + (formXStep // 2).
			ySrodka := y + (formYStep // 2).
			value := block 
				value: zeroPointX + (xSrodka*xVersorX) + (ySrodka*yVersorX)
				value: zeroPointY + (xSrodka*xVersorY) + (ySrodka*yVersorY).
			aCanvas
				fillRectangle:
				(x@y extent: formXStep @ formYStep)
				color: (color alpha: value).
		]
	]! !


!MGRelationOn2DBlock methodsFor: 'private initialize-release' stamp: 'mg 12/7/2013 20:45'!
initialize
	super initialize.
	block := [:aPoint|Color transparent].
	minimalStep := 0@0.! !


!MGRelationOn2DBlock methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:53'!
minimalStep
	"Return the minimal step between calculations in the plot space. See class comment."
	^ minimalStep! !

!MGRelationOn2DBlock methodsFor: 'accessing' stamp: 'mg 12/7/2013 14:53'!
minimalStep: anObject
	"Set the minimal step between calculations in the plot space. See class comment."
	minimalStep := anObject.
	self changed.
	! !


MGRelation subclass: #MGRelationOnCollection
	instanceVariableNames: 'collection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOnCollection commentStamp: 'mg 12/7/2013 15:32' prior: 0!
A MGRelationOnCollection is a class used for plotting any seuenceable collection of points. If used in continuous mode it will draw a line between each pair of point in the order of the collection.

Example:
	|mgPlotMorph mgRelationOnCollection|
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openCenteredInWorld.
	mgRelationOnCollection := MGRelationOnCollection new 
		continuous;
		collection: {0@0. 1@1. 0@1. 1@0}.
	mgPlotMorph addRelation: mgRelationOnCollection.

Instance Variables
	collection:		<SequenceableCollection of Points>

collection
	- a sequenceable collection of Points
!


!MGRelationOnCollection methodsFor: 'accessing' stamp: 'mg 12/7/2013 15:00'!
collection
	"Returned the collection of Points to plot."
	^ collection! !

!MGRelationOnCollection methodsFor: 'accessing' stamp: 'mg 12/7/2013 15:00'!
collection: aCollection
	"Set the collection of Points to plot."
	collection := aCollection.
	self changed.! !


!MGRelationOnCollection methodsFor: 'private drawing' stamp: 'mg 12/7/2013 14:25'!
drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	collection overlappingPairsDo:
	[:firstPoint :secondPoint|
		aCanvas 
			line: (aPlotToFormTransformation toFormPoint: firstPoint) asIntegerPoint
			to: (aPlotToFormTransformation toFormPoint: secondPoint) asIntegerPoint
			color: color
	]! !

!MGRelationOnCollection methodsFor: 'private drawing' stamp: 'mg 12/2/2013 10:41'!
drawNotContinuousOn: aCanvas transformation: aPlotToFormTransformation
	collection do:
	[:point||transformedPoint|
		transformedPoint := (aPlotToFormTransformation toFormPoint: point).
		pointIcon drawOn: aCanvas at: transformedPoint.
	]! !


!MGRelationOnCollection methodsFor: 'private initialize-release' stamp: 'mg 12/2/2013 10:48'!
initialize
	super initialize.
	collection := OrderedCollection new.! !


MGRelationOnCollection subclass: #GameRelation
	instanceVariableNames: 'lineWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!GameRelation methodsFor: 'as yet unclassified' stamp: 'dhn 1/3/2014 19:19'!
drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	collection overlappingPairsDo:
	[:firstPoint :secondPoint|
		aCanvas 
			line: (aPlotToFormTransformation toFormPoint: firstPoint) asIntegerPoint
			to: (aPlotToFormTransformation toFormPoint: secondPoint) asIntegerPoint
			width: self lineWidth
			color: color
	]! !


!GameRelation methodsFor: 'accessing' stamp: 'dhn 1/3/2014 19:19'!
lineWidth
	lineWidth ifNil: [lineWidth := 2].
	^ lineWidth! !

!GameRelation methodsFor: 'accessing' stamp: 'dhn 1/3/2014 19:19'!
lineWidth: anObject

	lineWidth := anObject! !


MGRelationOnCollection subclass: #MGRelationOnCollectionWithIcons
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOnCollectionWithIcons commentStamp: 'mg 12/7/2013 15:31' prior: 0!
A MGRelationOnCollectionWithIcons is a class similar to its superclass, but it uses a collection of MGPoints,
which allow you to use a different MGPointIcon for each point.

Example:
	|mgPlotMorph mgRelationOnCollectionWithIcons|
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openCenteredInWorld.
	mgRelationOnCollectionWithIcons := MGRelationOnCollectionWithIcons new 
		collection: 
		{
			MGPoint point: 0@0 pointIcon: MGCrossPointIcon new.
			MGPoint point: 1@1 pointIcon: MGDotPointIcon new.
			MGPoint point: 0@1 pointIcon: MGCrossPointIcon new.
			MGPoint point: 1@0 pointIcon: MGRectanglePointIcon new
		}.
	mgPlotMorph addRelation: mgRelationOnCollectionWithIcons.
	
Instance Variables
!


!MGRelationOnCollectionWithIcons methodsFor: 'private drawing' stamp: 'mg 12/7/2013 14:26'!
drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	collection overlappingPairsDo:
	[:firstPoint :secondPoint|
		aCanvas 
			line: (aPlotToFormTransformation toFormPoint: firstPoint point) asIntegerPoint
			to: (aPlotToFormTransformation toFormPoint: secondPoint point) asIntegerPoint
			color: color
	]! !

!MGRelationOnCollectionWithIcons methodsFor: 'private drawing' stamp: 'mg 12/7/2013 15:28'!
drawNotContinuousOn: aCanvas transformation: aPlotToFormTransformation
	collection do:
	[:point||transformedPoint|
		transformedPoint := (aPlotToFormTransformation toFormPoint: point point).
		point pointIcon drawOn: aCanvas at: transformedPoint.
	]! !


MGRelationOn1DBlock subclass: #MGRelationOnLeftToRightBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOnLeftToRightBlock commentStamp: 'mg 12/7/2013 15:35' prior: 0!
A MGRelationOnLeftToRightBlock is a class used for plotting with a block. The block takes one argument which is an x coordinate. It returns either a y coordinate or a collection of y coordinates.

Example:
	|mgPlotMorph mgRelationOnLeftToRightBlock|
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openCenteredInWorld.
	mgRelationOnLeftToRightBlock := MGRelationOnLeftToRightBlock new 
		block: [:x|x squared]; 
		continuous.
	mgPlotMorph addRelation: mgRelationOnLeftToRightBlock.

Instance Variables
!


!MGRelationOnLeftToRightBlock methodsFor: 'private drawing' stamp: 'mg 12/7/2013 14:25'!
drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	|xValue currentValues previousValues|
	previousValues := (self valuesFor: ((aPlotToFormTransformation toPlotPoint: 0 @ 0) x)).
	
	1 to: aCanvas extent x do:
	[:xVal|
		xValue := (aPlotToFormTransformation toPlotPoint: xVal @ 0) x.
		currentValues := self valuesFor: xValue.
		currentValues with: previousValues do:
		[:currentYValue :previousYValue|
			aCanvas
				line: (aPlotToFormTransformation toFormPoint: xValue @ previousYValue) asIntegerPoint
				to: (aPlotToFormTransformation toFormPoint: xValue @ currentYValue) asIntegerPoint
				color: color.
		].
		previousValues := currentValues.
	]! !

!MGRelationOnLeftToRightBlock methodsFor: 'private drawing' stamp: 'mg 12/2/2013 12:04'!
drawNotContinuousOn: aCanvas transformation: aPlotToFormTransformation
	|xValue|
	0 to: aCanvas extent x do:
	[:xVal|
		xValue := (aPlotToFormTransformation toPlotPoint: xVal @ 0) x.
		(self valuesFor: xValue) do:
		[:yValue|
			pointIcon 
				drawOn: aCanvas
				at: (aPlotToFormTransformation toFormPoint: xValue @ yValue)
		]
	]! !


MGRelationOn1DBlock subclass: #MGRelationOnTopToBottomBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MGRelationOnTopToBottomBlock commentStamp: 'mg 12/7/2013 15:36' prior: 0!
A MGRelationOnTopToBottomBlock is a class used for plotting with a block. The block takes one argument which is an y coordinate. It returns either an x coordinate or a collection of x coordinates.

Example:
	|mgPlotMorph mgRelationOnTopToBottomBlock|
	mgPlotMorph := MGPlotMorph new.
	mgPlotMorph openCenteredInWorld.
	mgRelationOnTopToBottomBlock := MGRelationOnTopToBottomBlock new 
		block: [:y|y squared]; 
		continuous.
	mgPlotMorph addRelation: mgRelationOnTopToBottomBlock.

Instance Variables
!


!MGRelationOnTopToBottomBlock methodsFor: 'private drawing' stamp: 'mg 12/7/2013 15:14'!
drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	|yValue currentValues previousValues|
	previousValues := (self valuesFor: ((aPlotToFormTransformation toPlotPoint: 0 @ 0) y)).
	
	1 to: aCanvas extent y do:
	[:yVal|
		yValue := (aPlotToFormTransformation toPlotPoint: 0 @ yVal) y.
		currentValues := self valuesFor: yValue.
		currentValues with: previousValues do:
		[:currentXValue :previousXValue|
			aCanvas
				line: (aPlotToFormTransformation toFormPoint: previousXValue @ yValue) asIntegerPoint
				to: (aPlotToFormTransformation toFormPoint: currentXValue @ yValue) asIntegerPoint
				color: color.		
		].
		previousValues := currentValues.	
	]! !

!MGRelationOnTopToBottomBlock methodsFor: 'private drawing' stamp: 'mg 12/2/2013 12:03'!
drawNotContinuousOn: aCanvas transformation: aPlotToFormTransformation
	|yValue|
	0 to: aCanvas extent y do:
	[:yVal|
		yValue := (aPlotToFormTransformation toPlotPoint: 0 @ yVal) y.
		(self valuesFor: yValue) do:
		[:xValue|
			pointIcon 
				drawOn: aCanvas
				at: (aPlotToFormTransformation toFormPoint: xValue @ yValue)
		]
	]! !


RectangleMorph subclass: #MarkerArea
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!MarkerArea commentStamp: 'dhn 6/30/2013 21:09' prior: 0!
A MarkerArea is a region in a board space where markers appear. 
The markers indicate which players have moved to the space during their turn.
!


!MarkerArea methodsFor: 'as yet unclassified' stamp: 'dhn 7/6/2013 12:56'!
drawOn: aCanvas
	| area |
	area := self bounds insetBy: 10 @ 16.
	aCanvas fillRectangle: area color: Color transparent.
	self width: self owner width.
	self bottom: self owner bottom - 80
! !

!MarkerArea methodsFor: 'as yet unclassified' stamp: 'dhn 7/4/2013 13:37'!
setup
	self position: self owner position.
	self width: self owner width.
	"self color: Color transparent."
	self dropEnabled: true.
	self bottom: self owner bottom - 80! !

!MarkerArea methodsFor: 'as yet unclassified' stamp: 'dhn 7/4/2013 13:19'!
setupIn: aMorph 
	self position: self owner position.
	self width: self owner width.
	self color: Color transparent.
	self dropEnabled: true.
	self bottom: self owner bottom - 80! !

!MarkerArea methodsFor: 'as yet unclassified' stamp: 'dhn 7/4/2013 18:51'!
winitialize
	self layoutPolicy: TableLayout new.
	self listDirection: #leftToRight.
	self listCentering: #center.
	self cellInset: 10 @ 0.
	self name: 'marks'.
	self borderWidth: 1.
! !


Morph subclass: #PlayersList
	instanceVariableNames: 'mgr collection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!PlayersList commentStamp: 'dhn 3/22/2012 10:20' prior: 0!
A PlayersList is a window for entering player names.

Instance Variables
	collection:		<names cache>
	mgr:		<the object requiring the names>
!


!PlayersList methodsFor: 'initialization' stamp: 'dhn 3/11/2012 19:39'!
buttonFor: aMorph target: anObject action: aSelector label: aString 
	^ aMorph target: anObject;
		 label: aString;
		 useRoundedCorners;
		 actionSelector: aSelector! !

!PlayersList methodsFor: 'initialization' stamp: 'dhn 4/27/2012 21:41'!
buttonPanel
	| bm |
	bm := RectangleMorph new.
	bm layoutPolicy: TableLayout new;
		 listDirection: #leftToRight;
		 listCentering: #center;
		 wrapCentering: #center;
		 color: Color transparent;
		 borderWidth: 0;
		 layoutInset: 4 @ 0;
		 cellInset: 12 @ 5;
		 extent: 300 @ 50.
	bm addMorph: (self
				buttonFor: SimpleButtonMorph new
				target: self mgr
				action: #deletePlayersList
				label: 'Cancel').
	bm addMorph: (self
				buttonFor: SimpleButtonMorph new
				target: self
				action: #cleanSlate
				label: 'Clear').
	bm addMorph: (self
				buttonFor: SimpleButtonMorph new
				target: self mgr
				action: #startGame
				label: 'Start Game').
	^ bm! !

!PlayersList methodsFor: 'initialization' stamp: 'dhn 3/22/2012 10:05'!
initialize
	super initialize! !

!PlayersList methodsFor: 'initialization' stamp: 'dhn 3/22/2012 11:55'!
setUpRectangle
	| m str |
	m := RectangleMorph new.
	m layoutPolicy: TableLayout new.
	m listDirection: #topToBottom.
	m hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap.
	m layoutInset: 20;
		 cellInset: 10.
	1
		to: self collection size
		do: [:i | m
				addMorphBack: (self collection at: i)].
	m addMorphBack: self buttonPanel.
	str := StringMorph contents: 'Please Enter the Names of  Players'.
	str fontName: 'BitstreamVeraSans' size: 24.
	m addMorph: str.
	m openCenteredInWorld.
	self setCursor: collection first selectAll.
	^ m! !


!PlayersList methodsFor: 'accessing' stamp: 'dhn 3/21/2012 21:36'!
cleanSlate
	self collection
		do: [:n | n contents: '                              '].
	self setCursor: collection first selectAll! !

!PlayersList methodsFor: 'accessing' stamp: 'dhn 3/20/2012 18:52'!
collection
	"Answer the value of collection"
	^ collection! !

!PlayersList methodsFor: 'accessing' stamp: 'dhn 3/20/2012 17:13'!
collection: anObject
	"Set the value of collection"

	collection := anObject! !

!PlayersList methodsFor: 'accessing' stamp: 'dhn 3/22/2012 09:33'!
mgr
	"Answer the value of mgr"

	^ mgr! !

!PlayersList methodsFor: 'accessing' stamp: 'dhn 3/22/2012 09:33'!
mgr: anObject
	"Set the value of mgr"

	mgr := anObject! !

!PlayersList methodsFor: 'accessing' stamp: 'dhn 3/21/2012 21:44'!
setCursor: aTextMorph
	ActiveHand newKeyboardFocus: aTextMorph
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

PlayersList class
	instanceVariableNames: ''!

!PlayersList class methodsFor: 'as yet unclassified' stamp: 'dhn 3/24/2012 10:59'!
emptyField
	"Answer a field with nothing but blanks"
	| s |
	s := String new writeStream.
	self fieldSize
		timesRepeat: [s nextPutAll: ' '].
	^ s contents! !

!PlayersList class methodsFor: 'as yet unclassified' stamp: 'dhn 3/24/2012 11:06'!
entryField
	"Answer a field for entering a player's name"
	^ TextMorph boldAuthoringPrototype backgroundColor: Color tan;
		 contents: self emptyField! !

!PlayersList class methodsFor: 'as yet unclassified' stamp: 'dhn 3/24/2012 10:58'!
fieldSize
	"Answer the size of the data entry fields"
	^ 30! !

!PlayersList class methodsFor: 'as yet unclassified' stamp: 'dhn 3/23/2012 12:46'!
openOn: aCollection for: aManager 
	| window |
	window := self basicNew collection: aCollection;
				 mgr: aManager;
				 setUpRectangle.
	^ window! !


AxesMorph subclass: #PlotMorph
	instanceVariableNames: 'series cachedMaxPoint cachedMinPoint lens scaledPoints references processMouseDown balloonFormatter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!PlotMorph commentStamp: 'dgd 10/11/2003 21:12' prior: 0!
I can draw many series of Points in a XY grid.  See the methods testXXX in the class side.

Samples:

   PlotMorph test.
   PlotMorph test2.
   PlotMorph test4.
   PlotMorph testWithReferences.
!


!PlotMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:30'!
balloonFormatter: anObject
	balloonFormatter := anObject! !

!PlotMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:31'!
cleanSeries
	| cleanSeries |
	cleanSeries := Dictionary new.
	series
		keysAndValuesDo: [:key :serie | cleanSeries
				at: key
				put: (serie points
						collect: [:plotPoint | plotPoint x @ plotPoint y])].
	^ cleanSeries! !

!PlotMorph methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:53'!
clear
	series do:[:each | each clear].
	self seriesChanged! !

!PlotMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:39'!
processMouseDown: aBoolean 
	processMouseDown := aBoolean! !

!PlotMorph methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:39'!
references: aMorphOrNil
	"Specifies a morph (if not nil) that is updated with the names of the plotted series, displayed in the same color as the actual plot."

	references := aMorphOrNil! !

!PlotMorph methodsFor: 'accessing' stamp: 'gs 11/30/2001 02:51'!
series
	^series! !


!PlotMorph methodsFor: 'change reporting' stamp: 'dhn 6/7/2014 14:31'!
changed
	
	cachedMaxPoint := nil.
	cachedMinPoint := nil.
	super changed! !


!PlotMorph methodsFor: 'private' stamp: 'dhn 6/7/2014 14:32'!
exploreExtrasAt: nearPoint 
	| extras |
	extras := (self scaledPoints at: nearPoint)
				collect: [:each | each extra].
	extras := extras
				select: [:each | each notNil].

extras isEmpty ifFalse:[
	extras explore]! !

!PlotMorph methodsFor: 'private' stamp: 'dhn 6/7/2014 14:33'!
findNearestPointTo: targetPoint 
	| nearestPoint |
	nearestPoint := nil.
	Cursor wait
				showWhile: [""
					self scaledPoints
						keysDo: [:scaledPoint | ""
							(nearestPoint isNil
									or: [(targetPoint dist: scaledPoint)
											< (targetPoint dist: nearestPoint)])
								ifTrue: [nearestPoint := scaledPoint]]].
	^ nearestPoint! !

!PlotMorph methodsFor: 'private' stamp: 'dhn 6/7/2014 15:16'!
seriesChanged
	cachedMaxPoint := nil.
	cachedMinPoint := nil.
	"If the morph has no owner, then the morph is not open yet"
	owner isNil 
ifTrue:[^ self].
""			
	self changed.
	self updateCotas! !

!PlotMorph methodsFor: 'private' stamp: 'dhn 6/7/2014 14:30'!
showLensAt: nearPoint 
	lens := EllipseMorph new.
	lens
		color: (Color red alpha: 0.5).
	lens extent: 7 @ 7.
	self addMorph: lens.
	lens position: self topLeft + nearPoint - (3 @ 3) + self borderWidth.
	lens
		showBalloon: (balloonFormatter
				value: (self scaledPoints at: nearPoint))! !

!PlotMorph methodsFor: 'private' stamp: 'dgd 10/11/2003 21:16'!
textForBalloon: aCollection 
	| stream point |
	point := aCollection anyOne.
	stream := String new writeStream.
	stream
		nextPutAll: (xAxisFormatter value: point x);
		 nextPutAll: '  ';
		
		nextPutAll: (yAxisFormatter value: point y);
		 nextPut: Character cr.
	aCollection
		do: [:each | 
			stream nextPutAll: each series name.
			each extra
				ifNotNil: [stream nextPutAll: ': ';
						 print: each extra]]
		separatedBy: [stream nextPut: Character cr].
	^ stream contents! !


!PlotMorph methodsFor: 'event handling' stamp: 'dgd 10/18/2001 16:53'!
handlesMouseDown: evt 
	^ processMouseDown! !

!PlotMorph methodsFor: 'event handling' stamp: 'dhn 6/7/2014 14:37'!
mouseDown: anEvent 
	| nearPoint |
	nearPoint := self findNearestPointTo: anEvent position - self topLeft - self borderWidth.
	nearPoint
		ifNotNil: [anEvent redButtonChanged
				ifTrue: [self showLensAt: nearPoint]
				ifFalse: [self exploreExtrasAt: nearPoint]]! !

!PlotMorph methodsFor: 'event handling' stamp: 'dgd 3/25/2003 09:09'!
mouseUp: anEvent 
	lens isNil ifTrue:[^ self].
""

			lens deleteBalloon.
			lens delete.
			lens := nil! !


!PlotMorph methodsFor: 'initialization' stamp: 'jcg 8/30/2003 16:03'!
initialize
	super initialize.

	series := Dictionary new.
	processMouseDown := true.
	lens := nil.
	balloonFormatter := [:aCollection | self textForBalloon: aCollection].
	self extent: 1 @ 1! !

!PlotMorph methodsFor: 'initialization' stamp: 'dhn 6/7/2014 14:34'!
initializeCotas
	"Don't put initial limits on the grid range... default is to compute them from series data."

	super initializeCotas.
	limitMinX := limitMaxX := limitMinY := limitMaxY := nil.! !


!PlotMorph methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:35'!
maxPoint
	cachedMaxPoint
		ifNil: [""
			limitMaxX notNil & limitMaxY notNil
				ifTrue: [cachedMaxPoint := limitMaxY @ limitMaxY]
				ifFalse: [| maxPoints | 
					maxPoints := series
								collect: [:serie | serie maxPoint]
								thenSelect: [:point | point notNil].
					cachedMaxPoint := maxPoints isEmpty
								ifTrue: [1 @ 1]
								ifFalse: [maxPoints max].
					limitMaxX notNil
						ifTrue: [cachedMaxPoint := limitMaxX @ cachedMaxPoint y].
					limitMaxY notNil
						ifTrue: [cachedMaxPoint := cachedMaxPoint x @ limitMaxY]]].
	^ cachedMaxPoint! !

!PlotMorph methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:36'!
minPoint
	cachedMinPoint
		ifNil: [""
			limitMinX notNil & limitMinY notNil
				ifTrue: [cachedMinPoint := limitMinX @ limitMinY]
				ifFalse: [| minPoints | 
					minPoints := series
								collect: [:serie | serie minPoint]
								thenSelect: [:point | point notNil].
					cachedMinPoint := minPoints isEmpty
								ifTrue: [0 @ 0]
								ifFalse: [minPoints min].
					limitMinX notNil
						ifTrue: [cachedMinPoint :=  limitMinX
										@ cachedMinPoint y].
					limitMinY notNil
						ifTrue: [cachedMinPoint := cachedMinPoint x
										@ limitMinY]]].
	^ cachedMinPoint! !

!PlotMorph methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:40'!
scalePoints
	scaledPoints := nil.
	series
		do: [:serie | serie
				scaleTo: self drawBounds
				height: self height - (self borderWidth * 2)
				maxPoint: self maxPoint
				minPoint: self minPoint]! !

!PlotMorph methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:30'!
scaledPoints
	^ scaledPoints
		ifNil: [scaledPoints := Dictionary new.
			series
				do: [:serie | serie points
						do: [:point | 
							| allPoints | 
							allPoints := scaledPoints
										at: point scaledPoint
										ifAbsentPut: [OrderedCollection new].
							allPoints add: point]].
			scaledPoints]! !

!PlotMorph methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:42'!
updateForm
	"Override superclass implementation to do drawing of data."
	| canvas |

	self updateReferences.
	self updateCotas.
	self scalePoints.
	canvas := form getCanvas.
	grid drawOn: canvas.
	(series values
		asSortedCollection: [:x :y | x name <= y name])
		do: [:serie | serie drawOn: canvas].
! !

!PlotMorph methodsFor: 'drawing' stamp: 'jcg 8/29/2003 22:55'!
updateReferences
	"Update a 'legend' displaying the description of each plotted series in the same color as that series."
	| seriesWithDescription sortedSeried |
	references isNil
		ifTrue: [^ self].
	""
	references removeAllMorphs.
""
	seriesWithDescription := series
				reject: [:each | each description isEmpty].
	sortedSeried := seriesWithDescription
				asSortedCollection: [:x :y | x description asLowercase <= y description asLowercase].
	sortedSeried
		do: [:serie | 
			| ref | 
			ref := StringMorph new.
			ref contents: serie description.
			ref color: serie color.
			references addMorphBack: ref.
			serie]! !


!PlotMorph methodsFor: 'series' stamp: 'dhn 6/7/2014 14:41'!
series: aSeriesOrSymbol 
	"If aSeriesOrSymbol is a PlotSeries, simply answer it.  Otherwise, it should be a string, and the returned value is the series with that name."

	^ aSeriesOrSymbol isString
		ifTrue: [| symbol | 
			symbol := aSeriesOrSymbol asSymbol.
			series
				at: symbol
				ifAbsentPut: [PlotSeries name: symbol]]
		ifFalse: [aSeriesOrSymbol]! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:34'!
series: aSymbol addPoint: aPoint 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		addPoint: aPoint.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:34'!
series: aSymbol addPoint: aPoint extra: anObject 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		addPoint: aPoint
		extra: anObject.
	self changed ! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol color: aColor 
	"Find the appropriate series and set a property in it."

	(self series:aSymbol) color:aColor.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol description: aString
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		description: aString.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol drawArea: aBoolean 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		drawArea: aBoolean.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol drawLine: aBoolean 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		drawLine: aBoolean.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol drawPoints: aBoolean 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol)
		drawPoints: aBoolean.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: seriesSymbol type: lineTypeSymbol 
	"Find the appropriate series and set a property in it."

	(self series: seriesSymbol)
		type: lineTypeSymbol.
	self changed! !

!PlotMorph methodsFor: 'series' stamp: 'jcg 8/29/2003 22:35'!
series: aSymbol width: anInteger 
	"Find the appropriate series and set a property in it."

	(self series: aSymbol) width: anInteger.
	self changed! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

PlotMorph class
	instanceVariableNames: ''!

!PlotMorph class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:16'!
plotPoints: aPointOrderedCollection 
	| plotMorph |
	plotMorph := PlotMorph new.
	plotMorph color: Color black twiceLighter twiceLighter;
		 title: 'Colors';
		 extent: 700 @ 300;
		 useRoundedCorners;
		 borderRaised.
	plotMorph series: #series color: Color white;
		 series: #series drawLine: false.
	aPointOrderedCollection
		do: [:e | ""
			plotMorph series: #series addPoint: e].
	plotMorph openInWorld.
	^ plotMorph! !

!PlotMorph class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:16'!
plotSeries: aPointOrderedCollection 
	| plotMorph |
	plotMorph := PlotMorph new.
	plotMorph color: Color gray lighter;
		 title: 'Colors';
		 extent: 700 @ 300;
		 useRoundedCorners;
		 borderRaised.
	plotMorph series: #series color: Color red;
		 series: #series drawLine: false.
	aPointOrderedCollection
		do: [:e | ""
			plotMorph series: #series addPoint: e].
	plotMorph openInWorld.
	^ plotMorph! !


!PlotMorph class methodsFor: 'testing' stamp: 'jcg 8/29/2003 23:10'!
test
	" 
	PlotMorph test  
	"
	| pm |
	pm _ PlotMorph new.
	pm
		color: (Color
				r: 0.0
				g: 0.376
				b: 0.317);
		 extent: 320 @ 320;
		 borderWidth: 2;
		 useRoundedCorners;
		 setBorderStyle: #raised;
		 title: 'Some test functions'.
	pm series: #sin color: Color red;
		 series: #cos color: Color blue;
		 series: #test color: Color yellow.
	pm series: #sin drawArea: true;
		 series: #cos drawArea: true;
		 series: #test drawArea: true.
	pm series: #sin description: 'sin';
		 series: #cos description: 'cosin';
		 series: #test description: 'test'.
	pm series: #test type: #stepped.
	pm series: #sin width: 2;
		 series: #sin drawLine: false.
	""
	pm
		yAxisFormatter: [:y | (y roundTo: 0.1) asString].
	""
	0
		to: 360
		by: 10
		do: [:x | 
			pm series: #sin addPoint: x @ x degreesToRadians sin.
			pm series: #cos addPoint: x @ x degreesToRadians cos.
			pm series: #test addPoint: x @ (x degreesToRadians cos + x degreesToRadians sin)].
	""
	pm openInWorld! !

!PlotMorph class methodsFor: 'testing' stamp: 'jcg 8/29/2003 23:11'!
test2
	" 
	PlotMorph test2  
	"
	| pm sigmoid |
	pm _ PlotMorph new.
	pm title: 'Sigmoid';
		 extent: 250 @ 250;
		 color: Color black.
	""
	pm series: #sigmoid1 color: Color red;
		 series: #sigmoid1 drawPoints: false;
		 series: #sigmoid2 color: Color blue;
		 series: #sigmoid2 drawPoints: false;
		 series: #sigmoid3 color: Color yellow;
		 series: #sigmoid3 drawPoints: false;
		 series: #sigmoid4 color: Color green;
		 series: #sigmoid4 drawPoints: false;
		 series: #sigmoid5 color: Color white;
		 series: #sigmoid5 drawPoints: false.
	""
	pm
		yAxisFormatter: [:y | (y roundTo: 0.1) asString].
	sigmoid _ [:x :slope | 1 / (1 + (slope * x) negated exp)].
	-10
		to: 10
		by: 0.25
		do: [:x | 
			pm series: #sigmoid1 addPoint: x
					@ (sigmoid value: x value: 3).
			pm series: #sigmoid2 addPoint: x
					@ (sigmoid value: x value: 2).
			pm series: #sigmoid3 addPoint: x
					@ (sigmoid value: x value: 1).
			pm series: #sigmoid4 addPoint: x
					@ (sigmoid value: x value: 1 / 2).
			pm series: #sigmoid5 addPoint: x
					@ (sigmoid value: x value: 1 / 3)].
	pm openInWorld! !

!PlotMorph class methodsFor: 'testing' stamp: 'jcg 8/29/2003 23:11'!
test4
	" 
	PlotMorph test4
	"
	| pm function |
	pm _ PlotMorph new.
	pm
		color: (Color blue twiceDarker twiceDarker twiceDarker alpha: 0.3);
		 extent: 300 @ 300;
		 useRoundedCorners.
	pm
		xAxisFormatter: [:x | x rounded asStringWithCommas].
	pm
		yAxisFormatter: [:y | y rounded asString].
	pm title: 'Some funny function'.
	pm series: #test2 color: Color red;
		 series: #test2 drawPoints: false.
	function _ [:x | x degreesToRadians sin / 5 + ((x / 10) degreesToRadians cos + (x / 10) degreesToRadians sin) * 100].
	0
		to: 3000
		by: 5
		do: [:x | pm series: #test2 addPoint: x
					@ (function value: x)].
	pm openInWorld! !

!PlotMorph class methodsFor: 'testing' stamp: 'jcg 8/29/2003 15:15'!
testWithReferences
	" 
	PlotMorph testWithReferences.
	"
	| pm ref |
	ref := AlignmentMorph newColumn.
	ref color: Color magenta twiceDarker twiceDarker;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 wrapCentering: #center;
		 cellPositioning: #leftCenter.
	""
	pm := PlotMorph new.
	pm references: ref.
	pm color: Color magenta twiceDarker twiceDarker;
		 extent: 300 @ 300;
		 borderWidth: 0;
		 title: 'Some test functions'.
	pm series: #sin color: Color red;
		 series: #cos color: Color blue;
		 series: #test color: Color yellow.
	pm series: #sin drawArea: true;
		 series: #cos drawArea: true;
		 series: #test drawArea: true.
	pm series: #sin description: 'sin';
		 series: #cos description: 'cosin';
		 series: #test description: 'test'.
	pm series: #test type: #stepped.
	0
		to: 360
		by: 10
		do: [:x | 
			pm series: #sin addPoint: x @ x degreesToRadians sin.
			pm series: #cos addPoint: x @ x degreesToRadians cos.
			pm series: #test addPoint: x @ (x degreesToRadians cos + x degreesToRadians sin)].
	""
	ref openInWorld.
	pm openInWorld! !


Object subclass: #PlotMorphGrid
	instanceVariableNames: 'plot drawAxis drawGrid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!PlotMorphGrid commentStamp: '<historical>' prior: 0!
I'm the grid of a PlotMorph!


!PlotMorphGrid methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:51'!
bestStep: aNumber 
	"answer the best step for grid drawing"
	| bestStep |
	bestStep := aNumber.
	2
		to: 40
		by: 2
		do: [:i | 
			| step | 
			step := aNumber / i.
			(step between: 25 and: 100)
				ifTrue: [bestStep := step]].
	^ bestStep! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:52'!
drawAxisOn: aCanvas 
	| axisColor yTo lighter darker baseColor bounds xTo |
	baseColor := plot baseColor alpha: 1.
	lighter := baseColor twiceLighter twiceLighter twiceLighter.
	darker := baseColor twiceDarker twiceDarker twiceDarker.
	axisColor := (lighter diff: baseColor)
					> (darker diff: baseColor)
				ifTrue: [lighter]
				ifFalse: [darker].
	""
	bounds := plot drawBounds.
	"Y axe"
	yTo := bounds topLeft - (0 @ 7).
	aCanvas
		line: bounds bottomLeft + (0 @ 5)
		to: yTo
		color: axisColor.
	aCanvas
		line: yTo
		to: yTo + (4 @ 4)
		color: axisColor.
	aCanvas
		line: yTo
		to: yTo + (-4 @ 4)
		color: axisColor.
	"X axe"
	xTo := bounds bottomRight + (7 @ 0).
	aCanvas
		line: bounds bottomLeft - (5 @ 0)
		to: xTo
		color: axisColor.
	aCanvas
		line: xTo
		to: xTo + (-4 @ -4)
		color: axisColor.
	aCanvas
		line: xTo
		to: xTo + (-4 @ 4)
		color: axisColor! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:54'!
drawGridOn: aCanvas 
	| gridColor lighter darker baseColor bounds |
	baseColor := plot baseColor alpha: 1.
	lighter := baseColor twiceLighter.
	darker := baseColor twiceDarker.
	gridColor := (lighter diff: baseColor)
					> (darker diff: baseColor)
				ifTrue: [lighter]
				ifFalse: [darker].
	""
	bounds := plot drawBounds.
	(bounds left
		to: bounds right
		by: (self bestStep: bounds width))
		do: [:x | 
			x := x rounded.
			aCanvas
				line: x @ bounds top
				to: x @ bounds bottom
				color: gridColor].
	(bounds top
		to: bounds bottom
		by: (self bestStep: bounds height))
		do: [:y | 
			y := y rounded.
			aCanvas
				line: bounds left @ y
				to: bounds right @ y
				color: gridColor]! !

!PlotMorphGrid methodsFor: 'drawing' stamp: 'dgd 10/16/2001 14:45'!
drawOn: aCanvas 
	drawGrid
		ifTrue: [self drawGridOn: aCanvas].
	drawAxis
		ifTrue: [self drawAxisOn: aCanvas]! !


!PlotMorphGrid methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:51'!
drawAxis: aBoolean 
	drawAxis := aBoolean! !

!PlotMorphGrid methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:53'!
drawGrid: aBoolean 
	drawGrid := aBoolean! !


!PlotMorphGrid methodsFor: 'initialization' stamp: 'dhn 6/7/2014 14:54'!
initialize
	drawAxis := true.
	drawGrid := true! !

!PlotMorphGrid methodsFor: 'initialization' stamp: 'dhn 6/7/2014 14:55'!
initializeOn: aPlotMorph
plot := aPlotMorph! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

PlotMorphGrid class
	instanceVariableNames: ''!

!PlotMorphGrid class methodsFor: 'instance creation' stamp: 'dgd 10/16/2001 14:30'!
new
	^ super new initialize! !

!PlotMorphGrid class methodsFor: 'instance creation' stamp: 'dgd 10/16/2001 14:29'!
on: aPlotMorph
	^ self new initializeOn: aPlotMorph! !


Point subclass: #PlotPoint
	instanceVariableNames: 'series scaledPoint extra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!PlotPoint commentStamp: '<historical>' prior: 0!
PlotPoint is a point that have more data used to draw in a PlotMorph!


!PlotPoint methodsFor: 'comparing' stamp: 'dgd 10/11/2003 21:16'!
= anObject 
	^ super = anObject
		and: [series = anObject series
				and: [extra = anObject extra]]! !

!PlotPoint methodsFor: 'comparing' stamp: 'dgd 10/11/2003 21:15'!
hash
	^ super hash
		bitXor: (series hash bitXor: extra hash)! !


!PlotPoint methodsFor: 'accessing' stamp: 'DGD 5/27/2001 23:29'!
extra
	^extra! !

!PlotPoint methodsFor: 'accessing' stamp: 'dgd 9/19/2001 22:58'!
scaledPoint
	^ scaledPoint ifNil:[self]! !

!PlotPoint methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:55'!
scaledPoint: anObject
	scaledPoint := anObject! !

!PlotPoint methodsFor: 'accessing' stamp: 'dgd 10/11/2003 21:16'!
series
	^ series! !


!PlotPoint methodsFor: 'initialization' stamp: 'dhn 6/7/2014 14:55'!
initialize
scaledPoint := self! !

!PlotPoint methodsFor: 'initialization' stamp: 'dgd 10/11/2003 21:16'!
initializeAt: aPoint series: aPlotSeries 
	self setX: aPoint x setY: aPoint y.
	series := aPlotSeries! !

!PlotPoint methodsFor: 'initialization' stamp: 'dgd 10/11/2003 21:16'!
initializeAt: aPoint series: aPlotSeries extra: anObject 
	self setX: aPoint x setY: aPoint y.
	series := aPlotSeries.
	extra := anObject! !


!PlotPoint methodsFor: 'printing' stamp: 'dgd 10/11/2003 21:16'!
printOn: aStream 
	super printOn: aStream.
	aStream nextPutAll: ' series:(';
		 print: series;
		 nextPutAll: ') scaled:';
		 print: scaledPoint.
	extra isNil
		ifFalse: [aStream nextPutAll: ' extra:';
				 print: extra]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

PlotPoint class
	instanceVariableNames: ''!

!PlotPoint class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:15'!
at: aPoint serie: aPlotSerie 
	^ self new initializeAt: aPoint series: aPlotSerie! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'DGD 6/13/2001 19:26'!
at: aPoint serie: aPlotSerie extra: anObject 
	^ self new
		initializeAt: aPoint
		serie: aPlotSerie
		extra: anObject! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:14'!
at: aPoint series: aPlotSeries
	^ self new initializeAt: aPoint series: aPlotSeries! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'dgd 10/11/2003 21:14'!
at: aPoint series: aPlotSeries extra: anObject 
	^ self new
		initializeAt: aPoint
		series: aPlotSeries
		extra: anObject! !

!PlotPoint class methodsFor: 'instance creation' stamp: 'DGD 5/28/2001 01:41'!
new
^super new initialize! !


Object subclass: #PlotSeries
	instanceVariableNames: 'name description color width points drawPoints drawLine drawArea type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!PlotSeries commentStamp: '<historical>' prior: 0!
I'm a serie of a PlotMorph!


!PlotSeries methodsFor: 'points' stamp: 'DGD 6/13/2001 23:30'!
addPoint: aPoint 
	points
		add: (PlotPoint at: aPoint serie: self)! !

!PlotSeries methodsFor: 'points' stamp: 'DGD 6/13/2001 23:31'!
addPoint: aPoint extra:anObject
	points
		add: (PlotPoint at: aPoint serie: self extra:anObject)! !

!PlotSeries methodsFor: 'points' stamp: 'dgd 10/15/2001 18:30'!
maxPoint
	^ points isEmpty
		ifTrue: [nil]
		ifFalse: [points max]! !

!PlotSeries methodsFor: 'points' stamp: 'dgd 10/15/2001 18:30'!
minPoint
	^ points isEmpty
		ifTrue: [nil]
		ifFalse: [points min]! !

!PlotSeries methodsFor: 'points' stamp: 'dgd 3/25/2003 09:41'!
scaleTo: anRectangle height: heightInteger maxPoint: maxPoint minPoint: minPoint 
	| drawExtent scaleFrom scaleTo|
	drawExtent := 1 @ 1 max: maxPoint - minPoint.
	drawExtent isZero ifTrue:[^ self].
""

			scaleFrom := 0 @ 0 rect: drawExtent.
			scaleTo := anRectangle.
			points do: 
					[:point | 
					| tempPoint |
					tempPoint := point - minPoint scaleFrom: scaleFrom to: scaleTo.
					point scaledPoint: tempPoint x @ (heightInteger - tempPoint y)]! !


!PlotSeries methodsFor: 'accessing-color' stamp: 'dgd 7/20/2002 12:48'!
areaColor
	^ color alpha: 0.25! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'dhn 6/7/2014 14:56'!
color: anObject
	color := anObject! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'dgd 7/20/2002 12:49'!
lineColor
	^ color
		alpha: 0.85! !

!PlotSeries methodsFor: 'accessing-color' stamp: 'dgd 7/20/2002 12:47'!
pointColor
	^ color twiceLighter alpha: 0.85! !


!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:56'!
clear
points := OrderedCollection new! !

!PlotSeries methodsFor: 'accessing' stamp: 'dgd 10/18/2001 12:54'!
color
	^color! !

!PlotSeries methodsFor: 'accessing' stamp: 'dgd 10/18/2001 14:31'!
description
	^ description ifNil:[name]! !

!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:56'!
description: aString
	description := aString! !

!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:57'!
drawArea: aBoolean 
	drawArea := aBoolean! !

!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:57'!
drawLine: aBoolean 
	drawLine := aBoolean! !

!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 14:57'!
drawPoints: aBoolean 
	drawPoints := aBoolean! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:51'!
name
	^ name! !

!PlotSeries methodsFor: 'accessing' stamp: 'DGD 6/14/2001 00:20'!
points
	^points! !

!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 15:03'!
type: aSymbol 
	"Line Type (#straightened, #stepped)"
	type := aSymbol! !

!PlotSeries methodsFor: 'accessing' stamp: 'dhn 6/7/2014 15:03'!
width: anObject
	width := anObject! !


!PlotSeries methodsFor: 'drawing' stamp: 'dgd 10/15/2001 18:10'!
drawOn: aCanvas 
	points isEmpty
		ifTrue: [^ self].
""
			drawArea
				ifTrue: [""
					type == #straightened
						ifTrue: [self drawStraightenedAreaOn: aCanvas].
					type == #stepped
						ifTrue: [self drawSteppedAreaOn: aCanvas]].
			drawLine
				ifTrue: [""
					type == #straightened
						ifTrue: [self drawStraightenedLineOn: aCanvas].
					type == #stepped
						ifTrue: [self drawSteppedLineOn: aCanvas]].
			drawPoints
				ifTrue: [self drawPointsOn: aCanvas]! !

!PlotSeries methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:58'!
drawPointsOn: aCanvas 
	| pointColor minus plus |
	pointColor := self pointColor.
	minus := width @ width.
	plus := minus * 2.
	points
		do: [:point | 
			| scaledPoint | 
			scaledPoint := point scaledPoint.
			aCanvas
				fillOval: (scaledPoint - minus rect: scaledPoint + plus)
				color: pointColor]! !

!PlotSeries methodsFor: 'drawing' stamp: 'dhn 6/7/2014 14:59'!
drawSteppedAreaOn: aCanvas 
	| areaColor areaPoints lastScaledPoint | 
			areaColor := self areaColor.
			areaPoints := OrderedCollection new.
			lastScaledPoint := nil.
			points
				do: [:each | 
					| scaledPoint | 
					scaledPoint := each scaledPoint.
					lastScaledPoint
						ifNotNil: [areaPoints add: scaledPoint x @ lastScaledPoint y].
					areaPoints add: scaledPoint.
					lastScaledPoint := scaledPoint].
			aCanvas
				drawPolygon: areaPoints
				color: areaColor
				borderWidth: 0
				borderColor: areaColor! !

!PlotSeries methodsFor: 'drawing' stamp: 'dhn 6/7/2014 15:00'!
drawSteppedLineOn: aCanvas 
	| lineColor lastScaledPoint |
	lineColor := self lineColor.
	lastScaledPoint := nil.
	points
		do: [:point | 
			| scaledPoint | 
			scaledPoint := point scaledPoint.
			lastScaledPoint
				ifNotNil: [""aCanvas
						line: lastScaledPoint
						to: scaledPoint x @ lastScaledPoint y
						width: width
						color: lineColor.
					aCanvas
						line: scaledPoint x @ lastScaledPoint y
						to: scaledPoint
						width: width
						color: lineColor].
			lastScaledPoint := scaledPoint]! !

!PlotSeries methodsFor: 'drawing' stamp: 'dhn 6/7/2014 15:00'!
drawStraightenedAreaOn: aCanvas 
	| areaColor | 
			areaColor := self areaColor.
			aCanvas
				drawPolygon: (points
						collect: [:each | each scaledPoint])
				color: areaColor
				borderWidth: 0
				borderColor: areaColor! !

!PlotSeries methodsFor: 'drawing' stamp: 'dhn 6/7/2014 15:01'!
drawStraightenedLineOn: aCanvas 
	| lineColor lastScaledPoint |
	lineColor := self lineColor.
	lastScaledPoint := nil.
	points
		do: [:point | 
			| scaledPoint | 
			scaledPoint := point scaledPoint.
			lastScaledPoint
				ifNotNil: [aCanvas
						line: lastScaledPoint
						to: scaledPoint
						width: width
						color: lineColor].
			lastScaledPoint := scaledPoint]! !


!PlotSeries methodsFor: 'initialization' stamp: 'dhn 6/7/2014 15:02'!
initializeName: aString 
	name := aString.
	""
	color := Color black.

	""
	width := 1.
	drawPoints := true.
	drawLine := true.
	drawArea := false.
	type := #straightened.
	points := OrderedCollection new! !


!PlotSeries methodsFor: 'printing' stamp: 'DGD 7/5/2001 12:00'!
printOn: aStream 
	aStream nextPutAll: 'Serie:';
		 nextPutAll: name;
		 nextPutAll: ', color:';
		 nextPutAll: color asString;
		 nextPutAll: ', width:';
		 nextPutAll: width asString;
		 nextPutAll: ', drawPoints:';
		 nextPutAll: drawPoints asString;
		 nextPutAll: ', drawLine:';
		 nextPutAll: drawLine asString;
		 nextPutAll: ', drawArea:';
		 nextPutAll: drawArea asString! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

PlotSeries class
	instanceVariableNames: ''!

!PlotSeries class methodsFor: 'instance creation' stamp: 'DGD 6/13/2001 23:45'!
name: aString 
	^ self new
		initializeName: aString
		! !


ListModel subclass: #StatList
	instanceVariableNames: 'player textMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!
!StatList commentStamp: 'dhn 2/13/2012 11:59' prior: 0!
A window with a list pane on the left and a scrollable text pane on the right. Selection in the list pane populates the text pane.

Instance Variables
	collection:		<Object>
	selectedItem:		<Object>
	text1:		<Object>

collection
	- xxxxx

selectedItem
	- xxxxx

text1
	- xxxxx!


!StatList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 21:39'!
buttonsPanel
	"Answer the panel for the buttons"
	^ PluggablePanelMorph new
		borderWidth: 0;
		useGradientFill;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #topLeft;
		wrapCentering: #center;
		layoutInset: 4 @ 0;
		cellInset: 12 @ 5;
		yourself! !

!StatList methodsFor: 'as yet unclassified' stamp: 'dhn 11/16/2014 10:09'!
listPanel
	"Answer the panel for the list"
	^ PluggableListMorph
		on: self
		list: #list
		selected: #currentSelection
		changeSelected: #setSelection:! !

!StatList methodsFor: 'as yet unclassified' stamp: 'dhn 11/16/2014 10:09'!
textPanel
	"Answer the panel for text"
	^ PluggableTextMorph
		on: self
		text: #text1
		accept: #accept1:from:
		readSelection: nil
		menu: #menu:! !

!StatList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 16:59'!
updateAssetsIn: aWindow
	"Bring window showing the current player's assets up to date"
		aWindow model setSelection: aWindow model currentSelection! !


!StatList methodsFor: 'initialize-release' stamp: 'dhn 12/10/2013 21:12'!
initialize
	super initialize.
! !


!StatList methodsFor: 'window creation' stamp: 'dhn 11/20/2014 18:52'!
listWindowLabelled: aString for: aName proportion: aWidth
	"create a window with a list pane aWidth wide and one text pane"
	| xw pm |
	(xw := player mgr windowNamed: aName)
		ifNil: [
			player mgr windows add: (
				xw := (CustomSystemWindow labelled: aString)
					removeMenuBox;
					model: self;
					layoutPolicy: ProportionalLayout new;
					endReceiver: player mgr;
					endMessage: #deleteWindow: with: aName;
					color: Color lightGray;
					addMorph: (PluggableListMorph
							on: self
							list: #list
							selected: #currentSelection
							changeSelected: #setSelection:)
						frame: (0.0 @ 0.0 extent: aWidth @ 1.0);
					addMorph: (pm := PasteUpMorph new
						layoutPolicy: TableLayout new;
						layoutInset: 6@6;
						color: Color white)
						frame: (aWidth @ 0.0 extent: (1 - aWidth) @ 1.0)).
				pm addMorph: (textMorph := TextMorph new
					layoutPolicy: ProportionalLayout new;
					contents: ' ').
				textMorph extension locked: true.
				xw extension externalName: aName]
			ifNotNil: [xw comeToFront].
	^ xw! !

!StatList methodsFor: 'window creation' stamp: 'dhn 10/3/2014 19:14'!
paneWindowLabelled: aString mgr: aFarm
	"create a window with a PluggableTextMorph. "
	| window |
	window := (CustomSystemWindow labelled: aString)
				model: self.
	window endReceiver: aFarm;
		endMessage: #deleteStats.
	window color: Color lightGray.
	window
		addMorph: (PluggableTextMorph
				on: self
				text: #text1
				accept: #accept1:from:
				readSelection: nil
				menu: #menu:)
		frame: (0.0 @ 0.0 extent: 1.0 @ 1.0).
	self removeWindowMenu: window.
	^ window! !

!StatList methodsFor: 'window creation' stamp: 'dhn 1/10/2012 19:49'!
removeWindowMenu: aWindow 
	| btn |
	btn := aWindow submorphs first submorphs at: 4.
	btn balloonText = 'window menu'
		ifTrue: [btn delete]! !

!StatList methodsFor: 'window creation' stamp: 'dhn 11/17/2014 14:28'!
windowLabelled: aString
	"create a window with a PluggableListMorph and
	one PluggableTextMorph. "
	| window paneWidth |
	paneWidth := 0.32.
	window := (CustomSystemWindow labelled: aString)
				model: self.
	window endReceiver: player mgr;
		endMessage: #deleteStats.
	window color: Color lightGray.
	window
		addMorph: (PluggableListMorph
				on: self
				list: #list
				selected: #currentSelection
				changeSelected: #setSelection:)
		frame: (0.0 @ 0.0 extent: paneWidth @ 1.0).
	window
		addMorph: (PluggableTextMorph
				on: self
				text: #text1
				accept: #accept1:from:
				readSelection: nil
				menu: #menu:)
		frame: (paneWidth @ 0.0 extent: (1 - paneWidth) @ 1.0).
	^ window! !


!StatList methodsFor: 'accessing' stamp: 'dhn 12/5/2011 20:56'!
player
	"Answer the value of player"

	^ player! !

!StatList methodsFor: 'accessing' stamp: 'dhn 12/5/2011 20:56'!
player: anObject
	"Set the value of player"

	player := anObject! !


!StatList methodsFor: 'list view' stamp: 'dhn 1/18/2014 12:20'!
reportFor: aPlayer on: anAsset
	| p str |
	p := aPlayer assets at: anAsset ifAbsent: [^ 'No such asset named ', anAsset].
	str := String new writeStream.
	str nextPutAll: p description,':'; cr;
		nextPutAll: (p reportAsAssetFor: aPlayer); cr.
	^ str contents! !

!StatList methodsFor: 'list view' stamp: 'dhn 11/26/2014 20:34'!
setSelection: anInteger 
	"Sent by a PluggableListMorph to tell the current selection.
	anInteger is the index of the currently selected item.
	A value of zero means that no item is currently selected."
	| item |
	selectedItem := anInteger.
	anInteger ~= 0
		ifTrue: [item := collection at: selectedItem.
			text1 := self reportFor: self player on: item]
		ifFalse: [text1 := nil].
	textMorph contents: text1.
	self changed: #currentSelection! !


StatList subclass: #DebtList
	instanceVariableNames: 'exerciseButton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!DebtList methodsFor: 'as yet unclassified' stamp: 'dhn 2/16/2012 17:38'!
initialize
	super initialize! !

!DebtList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 14:13'!
loanButtons
	"Answer the buttons for making a payment against debt"
	^ OrderedCollection new
		add: ((exerciseButton := GameButtonMorph new disableButton)
			target: self;
			actionSelector: #reviewPayment;
			useRoundedCorners;
			label: 'Make Payment');
		add: (SimpleButtonMorph new
			target: player mgr;
			actionSelector: #deleteWindow:;
			useRoundedCorners;
			arguments: {self class windowName};
			label: 'Cancel');
		yourself! !

!DebtList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 14:14'!
reviewPayment
	"Debit cash and credit debt; protect player from overpayment."
	| payment selection limit |
	selection := player mgr paymentList selectedItem.
	payment := selection * 1000 min:  player debt negated.
	limit := payment min: player cash.
	player cash:  player cash - limit.
	player debt:  player debt + limit.
	player mgr deleteWindow: 'Loan'.
	player mgr updatePlayer! !

!DebtList methodsFor: 'as yet unclassified' stamp: 'dhn 11/23/2013 15:59'!
setSelection: anInteger 
	"Cause the effect on cash and debt to be displayed"
	| pmt str |
	selectedItem := anInteger.
	anInteger > 0
		ifTrue: [pmt := anInteger * self player mgr class paymentIncrement min: self player debt negated.
			str := String new writeStream.
			str nextPutAll: 'By making this payment, ' , self player identity , ' would have:';
				 cr;
				 cr;
				 nextPutAll: '$' , (self player debt + pmt) negated asInteger asStringWithCommas , ' in debt and';
				 cr;
				 nextPutAll: '$' , (self player cash - pmt) asInteger asStringWithCommas , ' in cash and';
				 cr;
				 nextPutAll: '$' , self player playerDebtLimit value negated  asStringWithCommas , ' debt limit.'.
			text1 := str contents.
			exerciseButton enableButton]
		ifFalse: [exerciseButton disableButton.
			text1 := ''].
	self changed: #currentSelection;
		 changed: #text1 ! !

!DebtList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 16:47'!
updateDebtIn: aWindow
	"Bring window showing the current player's debt up to date"
		aWindow model setSelection: aWindow model currentSelection! !

!DebtList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 21:04'!
windowLabelled: aString color: aColor
	| xw panel |
	(xw := player mgr windowNamed: self class windowName)
		ifNil: [
			player mgr windows add: (
				xw := (CustomSystemWindow labelled: aString)
					removeMenuBox;
					model: self;
					setWindowColor: aColor;
					layoutPolicy: ProportionalLayout new;
					refreshMessage: #updateDebtIn:;
					endReceiver: player mgr;
					endMessage: #deleteWindow: with: self class windowName).
				xw addMorph: self listPanel
					frame: (0.0 @ 0.0 extent: 0.28 @ 1.0).
				xw addMorph: (panel := self buttonsPanel)
					frame: (0.28 @ 0 extent: 0.72 @ 0.2).
				panel addAllMorphs: (self loanButtons);
					color: panel owner color.
				xw addMorph: self textPanel
					frame: (0.28 @ 0.2 extent: 0.72 @ 0.8).
				xw extension externalName: self class windowName]
			ifNotNil: [xw comeToFront].
	^ xw! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

DebtList class
	instanceVariableNames: ''!

!DebtList class methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 12:57'!
windowName
	"Answer the name for windows on this class"
	^ 'Loan'! !


StatList subclass: #OptionsList
	instanceVariableNames: 'exerciseButton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!OptionsList methodsFor: 'as yet unclassified' stamp: 'dhn 12/9/2011 17:38'!
initialize
	super initialize! !

!OptionsList methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 12:54'!
optionsButtons
	"Answer the buttons for window named aName"
	^ OrderedCollection new
		add: ((exerciseButton := GameButtonMorph new disableButton)
			target: self;
			actionSelector: #reviewOption;
			useRoundedCorners;
			label: 'Exercise Option');
		add: (SimpleButtonMorph new
			target: player mgr;
			actionSelector: #deleteWindow:;
			useRoundedCorners;
			arguments: {self class windowName};
			label: 'Cancel');
		yourself! !


Flasher subclass: #Token
	instanceVariableNames: 'blinkTime who count roll state die arrow'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Graphics'!

!Token methodsFor: 'initialization' stamp: 'dhn 7/13/2013 12:20'!
arrowLeft
	self showArrow.
	^arrow rotationDegrees: 135! !

!Token methodsFor: 'initialization' stamp: 'dhn 7/13/2013 12:21'!
arrowRight
	self showArrow.
	^arrow rotationDegrees: 135 + 180! !

!Token methodsFor: 'initialization' stamp: 'dhn 9/5/2013 11:15'!
deleteArrow
	| m |
	m := submorphs detect: [:a | a externalName = 'arrow'] ifNone: [ ^ nil].
	m delete
! !

!Token methodsFor: 'initialization' stamp: 'dhn 11/21/2014 18:32'!
initialize
	super initialize.
	self wantsSteps.
	arrow := PolygonMorph arrowPrototype.
	arrow name: 'arrow'! !

!Token methodsFor: 'initialization' stamp: 'dhn 7/14/2013 14:45'!
showArrow
	arrow openInWorld.
	arrow center: self center.
	arrow bottom: self bottom - (self height * (5 / 4)).
! !


!Token methodsFor: 'accessing' stamp: 'dhn 10/11/2011 21:03'!
blinkTime
	"Answer the value of blinkTime"

	blinkTime ifNil: [blinkTime := 600].
	^ blinkTime! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/9/2011 14:20'!
blinkTime: anObject
	"Set the value of blinkTime"

	blinkTime := anObject! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/9/2011 20:04'!
count
	"Answer the value of count"

	count ifNil: [count := 0].
	^ count! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/9/2011 19:54'!
count: anObject
	"Set the value of count"

	count := anObject! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/9/2011 20:00'!
roll
	"Answer the value of roll"

	^ roll! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/9/2011 20:00'!
roll: anObject
	"Set the value of roll"

	roll := anObject! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/11/2011 17:36'!
state
	"Answer the value of state"

	state ifNil: [state := 0].
	^ state! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/11/2011 17:38'!
state: anObject
	"Set the value of state. There are three states: waiting, blinking, and moving."

	state := anObject! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/11/2011 21:53'!
who
	"Answer the value of who"

	^ who! !

!Token methodsFor: 'accessing' stamp: 'dhn 10/11/2011 21:53'!
who: anObject
	"Set the value of who"

	who := anObject! !


!Token methodsFor: 'as yet unclassified' stamp: 'dhn 11/21/2014 18:33'!
followPath
	| pathPoints |
	(pathPoints := self valueOfProperty: #pathPoints) ifNil: [^ Beeper beep].
	pathPoints do:
		[:aPoint |
			self position: aPoint.
			(Delay forMilliseconds: 100) wait]! !

!Token methodsFor: 'as yet unclassified' stamp: 'dhn 11/21/2014 17:40'!
hopPath
	"Answer a set of points for hop movement"
	^ OrderedCollection new
		add: 55@(23 negated);
		add: 100@(48 negated);
		add: 135@(74 negated);
		add: 148@(59 negated);
		add: 160@(40 negated);
		add: 167@(30 negated);
		add: 172@(22 negated);
		add: 177@(11 negated);
		add: 180@0;
		yourself
! !


!Token methodsFor: 'operations' stamp: 'dhn 10/20/2014 16:46'!
moving
	"Move until count reaches roll."
	| pos nextPos point vert pl mr |
	pl := self who.
	mr := pl mgr.
	roll >= count ifTrue: [ 
		pos := self position x.
		nextPos := pos + mr cellWidth.
		vert := self owner top.
		point := nextPos@vert.
		self position: point.
		self count: 1 + self count.
		]
	ifFalse: [
		pl position: (pl forwardTo: (roll + pl position) 
			around: mr spaces size).
		mr doSpace.
		self state: 0.
		die delete.
		].
! !

!Token methodsFor: 'operations' stamp: 'dhn 11/22/2014 20:31'!
rolling
	"Roll die until count reaches rollCount."
	self count = 0
		ifTrue: [die := DieMorph new openInWorld.
			die center: self center x + 100 @ self center y - 100].
	Token rollCount > self count
		ifTrue: [die toggleStop]
		ifFalse: [
			self state: 2.
			die stopStepping.
			self blinkTime: 800.
	Game testMode
		ifTrue: [roll := self who mgr hardRoll.
			die dieValue: roll]
		ifFalse: [roll := die dieValue].
			self count: 0.
			self who rollStats: roll].
	self count: 1 + self count! !

!Token methodsFor: 'operations' stamp: 'dhn 2/13/2012 20:38'!
waiting
	"Sit idle; do nothing."
! !


!Token methodsFor: 'stepping and presenter' stamp: 'dhn 12/2/2011 20:59'!
step
	"Perform my standard periodic action"
	self state = 0 ifTrue: [self waiting].
	self state = 1 ifTrue: [self rolling].
	self state = 2 ifTrue: [self moving].
! !

!Token methodsFor: 'stepping and presenter' stamp: 'dhn 10/9/2011 14:36'!
stepTime
	"Answer the desired time between steps, in milliseconds."

	^ self blinkTime! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Token class
	instanceVariableNames: ''!

!Token class methodsFor: 'as yet unclassified' stamp: 'dhn 7/11/2013 14:42'!
colors
	"Answer the colors that players can have."
	^ {Color r: 0.0 g: 0.634 b: 1. 
		Color r: 0.729 g: 0.455 b: 0.819. 
		Color r: 0.544 g: 0.729 b: 0.544. 
		Color r: 0.909 g: 0.27 b: 0.729. 
		Color r: 0.634 g: 0.729 b: 1. 
		Color cyan. Color green. Color red. Color orange. Color magenta}! !

!Token class methodsFor: 'as yet unclassified' stamp: 'dhn 12/2/2011 22:32'!
rollCount
	"Answer the number of iterations for a roll"
	^ 1! !
