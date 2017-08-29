Object subclass: #Asset
	instanceVariableNames: 'description quantity cost gross factor quality count missed owner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!

!Asset methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:37'!
cost
	"Answer the value of cost"

	cost ifNil: [cost := 0].
	^ cost ! !

!Asset methodsFor: 'accessing' stamp: 'dhn 9/18/2011 10:43'!
cost: anObject
	"Set the value of cost"

	cost := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 10/13/2011 12:28'!
count
	"Answer the number of harvests"

	count isNil ifTrue: [count := 0].
	^ count! !

!Asset methodsFor: 'accessing' stamp: 'dhn 10/13/2011 12:28'!
count: anObject
	"Set the value of count"

	count := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 9/23/2014 20:19'!
description: anObject
	"Set the value of description"

	description := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 12/6/2011 11:18'!
factor
	"Answer the value of factor"

	factor isNil ifTrue: [factor := 1].
	^ factor! !

!Asset methodsFor: 'accessing' stamp: 'dhn 12/6/2011 09:24'!
factor: anObject
	"Set the value of factor"

	factor := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:36'!
gross
	"Answer the value of gross"

	gross ifNil: [gross := 0].
	^ gross! !

!Asset methodsFor: 'accessing' stamp: 'dhn 9/18/2011 10:43'!
gross: anObject
	"Set the value of gross"

	gross := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 12/6/2011 14:35'!
missed
	"Answer the count of missed opportunities for this asset"

	missed ifNil: [missed := 0].
	^ missed! !

!Asset methodsFor: 'accessing' stamp: 'dhn 12/6/2011 14:33'!
missed: anObject
	"Set the value of missed"

	missed := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 12/6/2011 18:03'!
owner
	"Answer the value of owner"

	^ owner! !

!Asset methodsFor: 'accessing' stamp: 'dhn 12/6/2011 18:03'!
owner: anObject
	"Set the value of owner"

	owner := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 10/13/2011 12:27'!
quality
	"Answer the sum of each harvest quality."

	quality isNil ifTrue: [quality := 0].
	^ quality! !

!Asset methodsFor: 'accessing' stamp: 'dhn 10/13/2011 12:27'!
quality: anObject
	"Set the value of quality"

	quality := anObject! !

!Asset methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:36'!
quantity
	"Answer the value of quantity"

	quantity ifNil: [quantity := 0].
	^ quantity! !

!Asset methodsFor: 'accessing' stamp: 'dhn 9/19/2011 11:17'!
quantity: anObject
	"Set the value of quantity"

	quantity := anObject! !


!Asset methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:19'!
description
	^ description! !

!Asset methodsFor: 'as yet unclassified' stamp: 'dhn 1/8/2012 14:53'!
profit: aGross orLoss: aCost 
	| pnl msg |
	pnl := aGross - aCost.
	pnl >= 0
		ifTrue: [msg := ' profit']
		ifFalse: [msg := ' loss'.
			pnl := pnl negated].
	^ '$' , pnl asInteger asStringWithCommas , msg! !


!Asset methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:20'!
initialize
	super initialize.
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Asset class
	instanceVariableNames: ''!

!Asset class methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 08:18'!
optionCost
	^ self price * self auctionQuantity! !


Morph subclass: #Auctioneer
	instanceVariableNames: 'mgr window name bidding currentBid delta buyer stepCount timer buttonState'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/26/2014 12:48'!
bidBy: aName 
	| str |
	self currentBid: self currentBid + delta.
	self resetStepCount.
	str := String new writeStream.
	str nextPutAll: 'A bid of $';
		 nextPutAll: currentBid asStringWithCommas;
		 nextPutAll: ' was made by ';
		 nextPutAll: aName.
	window model append: str.
	window model soldButton enableButton.
	buyer := aName.
	self disableBidderButton: aName.
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 9/4/2013 18:19'!
bidderButtons
	| col btn |
	col := OrderedCollection new.
	mgr players
		do: [:each | 
			btn := self buttonFor: each.
			col := col addLast: btn;
						 yourself].
	^ col! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 18:21'!
bidderButtons: aName
	"Answer the buttons of players qualified to bid for aName"
	| col btn |
	col := OrderedCollection new.
	mgr players
		do: [:each | 
			btn := self buttonFor: each auctionName: aName.
			col := col addLast: btn;
						 yourself].
	^ col! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/28/2013 13:41'!
bidding
	bidding ifNil: [bidding := false].
	^ bidding! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/28/2013 13:40'!
bidding: aBool
	bidding := aBool! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/26/2014 11:34'!
buttonFor: aPlayer 
	^ (GameButtonMorph new)
		target: self;
		label: aPlayer identity;
		recolor: aPlayer tokenColor;
		useRoundedCorners;
		actionSelector: #bidBy:;
		arguments: {aPlayer identity}
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/26/2014 11:18'!
buttonFor: aPlayer auctionName: aName
	| btn |
	btn := GameButtonMorph new.
	btn target: self;
		label: aPlayer identity;
				recolor: aPlayer tokenColor;
		useRoundedCorners;
		actionSelector: #sendBid:;
		arguments: {aName}.
.
	^ btn! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/13/2014 19:24'!
buyer
	^ buyer! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/29/2013 11:17'!
buyer: anObject
	buyer := anObject! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/29/2013 12:22'!
currentBid
	currentBid ifNil: [currentBid := 0].
	^ currentBid! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/27/2013 12:25'!
currentBid: aNumber
	currentBid := aNumber! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/26/2014 15:28'!
deleteAuction
	window ifNotNil: [window delete].
	self restoreButtonState.
	'Asset' = self name ifTrue: [
		self mgr enableAll: {'Auction'};
		deleteAuctioneer: self name]
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 20:25'!
deleteAuction: aName
	"Close the auction window and delete the auctioneer named aName."
	| chanter |
	chanter := self mgr auctioneerNamed: aName.
	chanter ifNotNil: [chanter window ifNotNil: [chanter window delete]].
	self restoreButtonState.
	'Asset' = aName ifTrue: [self mgr enableAll: {'Auction'}]

! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/27/2013 12:14'!
delta
	^ delta
	! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/27/2013 12:14'!
delta: aNumber
	delta := aNumber
	! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/26/2014 13:32'!
disableBidderButton: aName 
	"Disable the bidder's button and enable everyone else's button"
	window model biddersPane submorphs
		do: [:ea | ea label = aName
			ifTrue: [ea disableButton]
			ifFalse: [
				ea enableButton.
				ea recolor: ((mgr players detect: [:a | a identity = ea label]) tokenColor)]]! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 12/14/2013 21:14'!
initialize
	super initialize.
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/26/2013 18:32'!
mgr
	^ mgr
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/25/2013 17:31'!
mgr: anObject
	mgr := anObject
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 12:38'!
name
	"Answer the name of the auctioneer"
	^ name! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 12:39'!
name: anObject
	"Set the name of the auctioneer"
	name := anObject! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/28/2013 12:27'!
resetStepCount
	stepCount := 0! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/24/2014 15:36'!
restoreButtonState
	buttonState 
		associationsDo: [:ea | 
			ea value ifNotNil: [mgr enableAll: {ea key asString}]
	]! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/24/2014 15:37'!
saveButtonState: aCollection 
	| button |
	buttonState := Dictionary new.
	aCollection
		do: [:ea | 
			button := mgr buttons submorphs
						detect: [:b | b externalName = ea].
			buttonState at: ea asSymbol put: button target]! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 12/15/2013 14:50'!
startAuction
	| bumps |
	bumps := Auctioneer bidBump collect: [:each | '$', each asStringWithCommas].
	window model collection: bumps;
		selectedItem: 5;
		changed: #list.
	 window model listHeading contents: 'BID INCREMENT'.
	delta := Auctioneer bidBump at: window model selectedItem.
	self resetStepCount.
	bidding := true.
! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/28/2013 13:19'!
stepCount: anObject
	stepCount := anObject! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/26/2013 09:40'!
window
	^ window! !

!Auctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 7/26/2013 14:23'!
window: aWindow
	window := aWindow! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Auctioneer class
	instanceVariableNames: ''!

!Auctioneer class methodsFor: 'as yet unclassified' stamp: 'dhn 7/27/2013 10:38'!
bidBump
	^ 1000 * #(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)! !


Object subclass: #Direction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!

!Direction methodsFor: 'as yet unclassified' stamp: 'dhn 8/8/2013 09:55'!
testLong
	| ans |
	Transcript clear.
	1
		to: 12
		do: [:from | 1
				to: 12
				do: [:to | 
					ans := Direction
								longest: from
								to: to
								in: 12.
					Transcript cr; show: from; tab; show: to; tab; show: ans; cr]]! !

!Direction methodsFor: 'as yet unclassified' stamp: 'dhn 8/8/2013 09:54'!
testShort
	| ans |
	Transcript clear.
	1
		to: 12
		do: [:from | 1
				to: 12
				do: [:to | 
					ans := Direction
								shortest: from
								to: to
								in: 12.
					Transcript cr; show: from; tab; show: to; tab; show: ans; cr]]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Direction class
	instanceVariableNames: ''!

!Direction class methodsFor: 'as yet unclassified' stamp: 'dhn 8/8/2013 09:53'!
longest: a to: b in: n 
	^ (Direction shortest: a to: b in: n) negated! !

!Direction class methodsFor: 'as yet unclassified' stamp: 'dhn 8/8/2013 09:48'!
shortest: a to: b in: n 
	^ (Float twoPi * (b + n - a / n)) sin sign! !


Object subclass: #Game
	instanceVariableNames: 'arena boardMgr goal numberArea path players currentPlayer playerIndex playerHues hueIndex buttons tourFlag token marks outs cellCount hardRoll windows won auctioneers spaceFreq spaces'
	classVariableNames: 'TestMode'
	poolDictionaries: ''
	category: 'Game-Model'!
!Game commentStamp: 'dhn 10/14/2014 13:28' prior: 0!
A Game is the board manager.

Instance Variables
	arena:		<Object>
	auctioneer:		<Object>
	boardMgr:		<Object>
	buttons:		<Object>
	cellCount:		<Object>
	currentPlayer:		<Object>
	goal:		<Object>
	hardRoll:		<Object>
	hueIndex:		<Object>
	marks:		<Object>
	numberArea:		<Object>
	outs:		<Object>
	path:		<Object>
	playerHues:		<Object>
	playerIndex:		<Object>
	players:		<Object>
	spaceFreq:		<Object>
	statWindow:		<Object>
	tags:		<Object>
	token:		<Object>
	tourFlag:		<Object>
	won:		<Object>

arena
	- xxxxx

auctioneer
	- xxxxx

boardMgr
	- xxxxx

buttons
	- xxxxx

cellCount
	- xxxxx

currentPlayer
	- xxxxx

goal
	- xxxxx

hardRoll
	- xxxxx

hueIndex
	- xxxxx

marks
	- xxxxx

numberArea
	- xxxxx

outs
	- xxxxx

path
	- xxxxx

playerHues
	- xxxxx

playerIndex
	- xxxxx

players
	- xxxxx

spaceFreq
	- xxxxx

statWindow
	- xxxxx

tags
	- xxxxx

token
	- xxxxx

tourFlag
	- xxxxx

won
	- xxxxx
!


!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 22:21'!
addMarkerIDInMarks
	"Indicate the location of the current player."
	self marks place: self currentPlayer in: self currentPlayer position at: self playerIndex.
! !

!Game methodsFor: 'operating' stamp: 'dhn 10/22/2014 20:23'!
cellsAt: anIndex 
	"Show the board starting with self spaces at: anIndex."
	| str ix tags |
	tags := self players
				collect: [:ea | ea marker].
	1
		to: cellCount
		do: [:m | 
			str := String new writeStream.
			ix := self wrap: anIndex + m - 1 on: spaces.
			str nextPutAll: (self spaces at: ix) describe;
				 cr.
			Game testMode
				ifTrue: [str nextPutAll: 'Space ' , anIndex + m - 1 asString;
						 cr].
			(boardMgr cells at: m)
				contents: str contents.
			self
				showMarksFor: ix
				at: (boardMgr cells at: m)]! !

!Game methodsFor: 'operating' stamp: 'dhn 10/25/2014 10:20'!
disableAll: aCollection
	"Disable all buttons named in aCollection"
	aCollection do: [:x |
		(self buttons submorphNamed: x ifNone: []) disableButton]

! !

!Game methodsFor: 'operating' stamp: 'dhn 10/15/2014 12:07'!
doSpace
	"Perform the method for the board location"
	^ self perform: ('space', self currentPlayer position asString) asSymbol
! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:45'!
doStop
	"Stop the tour (eventually)."
	1 to: buttons submorphs size do: [:n |
		|btn|
		btn := buttons submorphs at: n.
		#doStop = btn actionSelector ifTrue: [
			btn firstSubmorph contents: 'Tour'.
			btn actionSelector: #doTour.
			 tourFlag := false.].
		].
! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:47'!
doTour
	"Start the tour"
	"Egad, this is really awful code."
	| btn |
	1
		to: buttons submorphs size
		do: [:n | 
			btn := buttons submorphs at: n.
			#doTour = btn actionSelector
				ifTrue: [btn firstSubmorph contents: 'Stop'.
					btn actionSelector: #doStop.
					tourFlag := true]].
	self tourAt: 2.
	1
		to: buttons submorphs size
		do: [:n | 
			btn := buttons submorphs at: n.
			#doStop = btn actionSelector
				ifTrue: [btn firstSubmorph contents: 'Tour'.
					btn actionSelector: #doTour.
					tourFlag := false]]! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:51'!
drawCard: aDeck discard: aDiscard
	"Move a card from aDeck to aDiscard. Answer the card. Refresh aDeck with aDiscard shuffled, if necessary."
	|card|
	aDeck isEmpty ifFalse: [.
		card := aDeck removeFirst.
		aDiscard addFirst: card.
		^card
		]
	ifTrue: [
		aDeck addAll: (self scramble: aDiscard).
		aDiscard removeAll: aDeck.
		^self drawCard: aDeck discard: aDiscard.
		].
! !

!Game methodsFor: 'operating' stamp: 'dhn 10/25/2014 10:20'!
enableAll: aCollection
	"Enable all buttons named in aCollection"
	aCollection do: [:x |
		(self buttons submorphNamed: x ifNone: []) enableButton]
! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:52'!
endTurn
	"End a player's turn and select the next player."
	self addMarkerIDInMarks; removeAllMarkersInCells.
	token delete.
	self nextPlayer; setupToken: self currentPlayer.
	self won
		ifTrue: [self wonButtonsState]
		ifFalse: [self enableAll: {'Move'}.
			self disableAll: {'End Turn'}]! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 22:01'!
hardRoll
	"Answer the manually entered roll."
	^ hardRoll! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:56'!
move
	"Move the token"
	token state: 1.
	self disableAll: {'Move'}! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:57'!
moveFrom: positionA backTo: positionB
	"Move the token backward."
	token addMorph: token arrowLeft.
	self
		moveFrom: positionA
		to: positionB
		by: -1! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 21:59'!
moveFrom: positionA to: positionB
	"Move the token in the shorter direction."
	| dir |
			dir := Direction
						shortest: positionA
						to: positionB
						in: self spaces size.
			dir < 0
				ifTrue: [token addMorph: token arrowLeft]
				ifFalse: [token addMorph: token arrowRight.
					].
			self
				moveFrom: positionA
				to: positionB
				by: dir.
! !

!Game methodsFor: 'operating' stamp: 'dhn 10/21/2014 18:14'!
moveFrom: start to: end by: direction 
	"Animate moves forward or backward."
	| a b sz |
	a := start.
	b := end.
	sz := self spaces size.
	direction < 0
		ifTrue: [start < end
				ifTrue: [
					a := start + sz]]
		ifFalse: [start > end
				ifTrue: [
					b := end + sz]].
	a
		to: b
		by: direction
		do: [:n | 
			self
				positionBoardTo: (self wrap: n on: spaces).
			self arena world doOneCycleNow.
			(Delay forSeconds: self currentPlayer class moveInterval) wait].
	token deleteArrow! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 22:00'!
nextPlayer
	"Set the next player"
	| title |
	title := self arena submorphs
				detect: [:s | 'title' = s externalName].
	self playerIndex: (self wrap: playerIndex + 1 on: players).
	currentPlayer := (players at: playerIndex).
	title string: currentPlayer identity , '''s turn.'.
	title color: currentPlayer tokenColor.
	self updatePlayer; removeMarkerIDInMarks; positionBoardTo: currentPlayer position.
	Game testMode
		ifTrue: [hardRoll := 6 min: (FillInTheBlank request: 'How many spaces' initialAnswer: '6') asNumber]! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 22:05'!
parseSeasonsAt: anIndex
	"Answer a collection of seasons, starting at anIndex."
	| col start sea |
	col := OrderedCollection new.
	sea := self seasonAt: anIndex.
	start := 0.
	0
		to: cellCount - 1
		do: [:n | 
			| next |
			next := self
						seasonAt: (self wrap: anIndex + n on: spaces).
			sea desc = next desc
				ifFalse: [col addLast: start + 1 @ n -> sea.
					start := n.
					sea := next]].
	col addLast: start + 1 @ cellCount -> sea.
	^ col! !

!Game methodsFor: 'operating' stamp: 'dhn 7/12/2013 17:10'!
positionBoardTo: anIndex 
	"Change the location on the board"
	| assoc |
	self removeAllMarkersInCells; cellsAt: anIndex.
	assoc := self parseSeasonsAt: anIndex.
	boardMgr showSeasons: assoc! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 22:07'!
removeAllMarkersInCells
	"Remove markers from all displayed cells."
	| col |
	boardMgr cells
		do: [:eachCell | 
			col := eachCell owner submorphNamed: 'marks' ifNone: [self halt].
			col submorphs
				ifNotNil: [col submorphs
						do: [:y | y delete]]]! !

!Game methodsFor: 'operating' stamp: 'dhn 10/28/2014 22:09'!
removeMarkerIDInMarks
	"Remove the mark of currentPlayer at his current position."
	| col ix |
	col := marks rowAt: currentPlayer position.
	ix := col indexOf: currentPlayer ifAbsent: [nil].
	ix ifNotNil: [col at: ix put: String new.]! !

!Game methodsFor: 'operating' stamp: 'dhn 7/12/2013 17:10'!
setupMarksFor: aNumber 
	"Answer places for markers, one per aNumber spaces on the board"
	| set array |
	set := Array new: aNumber.
	array := Array new: boardMgr namesCache size.
	1
		to: array size
		do: [:m | array at: m put: ''].
	1
		to: aNumber
		do: [:each | set at: each put: array copy].
	^ set! !

!Game methodsFor: 'operating' stamp: 'dhn 10/23/2014 19:23'!
showMarksFor: anIndex at: aCell 
	"Reflect the presence of players at a board space in the marker area
	of aCell. The position of the space is specified by anIndex."
	| area spots adds |
	self marks ifNotNil: [
		area := aCell owner submorphNamed: 'marks' ifNone: [self halt].
		spots := self marks rowAt: anIndex.
		adds := spots
			select: [:each | each ~= String new].
		adds
			do: [:each | area addMorph: each marker]]! !

!Game methodsFor: 'operating' stamp: 'dhn 10/20/2014 16:41'!
tourAt: anInterval 
	"Take a tour of the board."
	1
		to: self spaces size
		do: [:n |  tourFlag
				ifTrue: [self positionBoardTo: n.
					arena world doOneCycleNow.
					(Delay forSeconds: anInterval) wait]]! !


!Game methodsFor: 'accessing' stamp: 'dhn 9/10/2011 15:14'!
arena
	"Answer the value of arena"

	^ arena! !

!Game methodsFor: 'accessing' stamp: 'dhn 9/10/2011 15:14'!
arena: anObject
	"Set the value of arena"

	arena := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:20'!
auctioneers: anObject
	"Set the value of auctioneers"
	auctioneers := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 9/16/2011 17:54'!
buttons
	"Answer the value of buttons"

	^ buttons! !

!Game methodsFor: 'accessing' stamp: 'dhn 9/16/2011 17:54'!
buttons: anObject
	"Set the value of buttons"

	buttons := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:36'!
cellCount
	"Answer the value of cellCount"
	^ cellCount! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:36'!
cellCount: anObject
	"Set the value of cellCount"
	cellCount := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:36'!
currentPlayer
	"Answer the value of currentPlayer"
	^ currentPlayer! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:37'!
currentPlayer: anObject
	"Set the value of currentPlayer"
	currentPlayer := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:38'!
goal: anAmount
	"Set the goal of the game"
	goal := anAmount! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:02'!
hardRoll: anObject
	"Set the manually entered roll."
	hardRoll := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/10/2011 20:00'!
hueIndex
	"Answer the value of hueIndex"

	hueIndex ifNil: [hueIndex := 0].
	^ hueIndex! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/10/2011 19:58'!
hueIndex: anObject
	"Set the value of hueIndex"

	hueIndex := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:40'!
marks
	"Answer the value of marks."
	^ marks! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 21:41'!
marks: anObject
	"Set the value of marks."
	marks := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 4/25/2012 11:27'!
numberArea
	"Answer the value of numberArea"

	^ numberArea! !

!Game methodsFor: 'accessing' stamp: 'dhn 4/25/2012 11:27'!
numberArea: anObject
	"Set the value of numberArea"

	numberArea := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 11/4/2011 08:31'!
outs
	"Answer the players who are out of the game."

	^ outs ifNil: [OrderedCollection new].! !

!Game methodsFor: 'accessing' stamp: 'dhn 11/4/2011 08:29'!
outs: anObject
	"Set the value of outs"

	outs := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 4/25/2012 11:27'!
path
	"Answer the value of path"

	^ path! !

!Game methodsFor: 'accessing' stamp: 'dhn 4/25/2012 11:27'!
path: anObject
	"Set the value of path"

	path := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/10/2011 20:03'!
playerHues
	"Answer the value of playerHues"

	playerHues ifNil: [playerHues := Token colors shuffled].
	^ playerHues! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/10/2011 19:55'!
playerHues: anObject
	"Set the value of playerHues"

	playerHues := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/10/2011 18:14'!
playerIndex
	"Answer the value of playerIndex"

	playerIndex ifNil: [playerIndex := 0].
	^ playerIndex! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/10/2011 18:12'!
playerIndex: anObject
	"Set the value of playerIndex"

	playerIndex := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 9/14/2011 22:55'!
players
	"Answer the value of players"

	^ players! !

!Game methodsFor: 'accessing' stamp: 'dhn 9/18/2011 08:10'!
players: aPlayer
	"Add aPlayer to the collection of players."
	self players addLast: aPlayer! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:14'!
spaceFreq
	"Answer the value of spaceFreq"
	^ spaceFreq! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:14'!
spaceFreq: anObject
	"Set the value of spaceFreq"
	spaceFreq := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:15'!
spaces
	"Answer the value of spaces"
	^ spaces! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:16'!
spaces: anObject
	"Set the value of spaces"
	spaces := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 15:46'!
statWindow
	"Answer the value of statWindow"
	^ statWindow! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 15:46'!
statWindow: anObject
	"Set the value of statWindow"
	statWindow := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:17'!
token
	"Answer the value of token"
	^ token ! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:17'!
token: anObject
	"Set the value of token"
	token := anObject! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:18'!
tourFlag
	"Answer the value of tourFlag"
	^ tourFlag! !

!Game methodsFor: 'accessing' stamp: 'dhn 10/28/2014 22:18'!
tourFlag: anObject
	"Set the value of tourFlag"
	tourFlag := anObject! !


!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 12:57'!
auctioneerNamed: aName
	"Answer the auctioneer named aName or nil if not found"
	self auctioneers do: [:a | a name = aName ifTrue: [^ a] ifFalse: [^ nil]]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:19'!
auctioneers
	"Answer the value of auctioneers"
	^ auctioneers! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 21:42'!
declareWinner
	"Announce the winner and indicate that the game has been won."
	UserDialogBoxMorph inform: self currentPlayer identity , ' has amassed net assets of more than $' , self goal asStringWithCommas , ' and is the winner of the game.' title: 'THE WINNAH!!'.
	self won: true! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/29/2014 20:14'!
deleteAllWindows
	"Delete every window in the bag of windows"
	self windows do: [:ea |
		self deleteWindow: ea extension externalName]
! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 13:13'!
deleteAuctioneer: aName
	"Remove the auctioneer named aName from the set of auctioneers"
	self auctioneers remove: (self auctioneerNamed: aName) ifAbsent: []! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 20:10'!
deleteWindow: aName
	"Remove the window named aName from the collection of windows and delete it."
	| wind |
	wind := self windowNamed: aName.
	self windows: (self windows select: [:a | a extension externalName ~= aName]).
	wind ifNotNil: [wind delete]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 21:54'!
goal
	"Answer the goal of the game"
	goal ifNil: [goal := boardMgr class goal].
	^ goal asNumber! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 8/2/2014 21:49'!
initialButtonState
	"Establish the button state at the start of the game"
	self subclassResponsibility! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:03'!
oldGoal
	"Answer the previous goal."
	^ boardMgr class oldGoal asNumber! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/26/2014 15:51'!
playerNamed: aString
	"Answer the player with identity = aString."
	^ players detect: [ :ea | ea identity = aString] ifNone: [self halt ]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:10'!
setGoal
	"Change the goal of the game."
	goal ifNil: [goal := boardMgr class goal asString].
	goal := (FillInTheBlank request: 'Net assets to win the game?' initialAnswer: goal asString centerAt: World center).
	goal = '' ifTrue:  [goal := self oldGoal]
! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:12'!
setupPlayersCash
	"Display cash held by each player."
	| nbr |
	nbr := self players size.
	1
		to: nbr
		do: [:k | 
			| j money |
			j := k - 1.
			money := TTSampleStringMorph new font: TTFontDescription default.
			money name: (self players at: k) identity.
			self arena
				addMorph: money
				fullFrame: (LayoutFrame
						fractions: (j / nbr @ 1 corner: k / nbr @ 1)
						offsets: (0 @ 50 negated corner: 0 @ 0)).
			money color: (self players at: k) tokenColor;
				 string: '$' , (self players at: k) cash asInteger asStringWithCommas;
				 borderWidth: 1]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 11/20/2014 09:51'!
showSpaceHistogram
	"Open a window showing the distribution of landing on board spaces."
	| xw name wWidth buttonArea plotArea |
	name := 'AllSpace'.
	(xw := self windowNamed: name)
		ifNil: [
			windows add: (xw := (CustomSystemWindow labelled: 'Space Histogram')
				removeMenuBox;
				layoutPolicy: ProportionalLayout new;
				model: spaceFreq;
				refreshMessage: #updateSpaceHistogramIn:;
				endReceiver: self;
				endMessage: #deleteWindow: with: name;
				extent: self arena width * 0.85 @ (self arena height * 0.35);
				borderWidth: 4;
				borderColor: Color black;
				setWindowColor: Color lightGray;
				center: self arena center).
			wWidth := xw width - (2 * xw borderWidth).
			buttonArea := spaceFreq buttonsTarget
				layoutFrame: (LayoutFrame new
					leftFraction: 0;
					topFraction: 0.15;
					bottomFraction: 1;
					rightFraction: 1;
					topOffset: xw labelHeight * 2 negated).
			xw addMorph: buttonArea fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0.1)).
			plotArea := spaceFreq plotArea.
			xw addMorph: plotArea fullFrame: (LayoutFrame fractions: (0 @ 0.1 corner: 1 @ 1)).
			self arena addMorph: xw.
			xw extension externalName: name.
			plotArea addAllMorphs: (spaceFreq barGraphOfWidth: plotArea width).
			xw extension externalName: name]
		ifNotNil: [xw comeToFront]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:16'!
startGame
	"Start the game."
	| col |
	col := boardMgr namesCache
				select: [:t | t contents ~= PlayersList emptyField].
	self deletePlayersList.
	col size >= 2
		ifTrue: [boardMgr playButtonSet: arena.
			self setupPlayers.
			self marks: (Marks new ofSize: (self class spaceDesc size) @ (boardMgr namesCache size)).
			self setupPlayersCash.
			self playerIndex: (col size atRandom) - 1.
			self nextPlayer.
			self setupToken: currentPlayer.
			self initialButtonState]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 12/21/2013 11:51'!
takeBidOf: aPlayer
	auctioneer bidBy: aPlayer! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:25'!
updateNumbers
	"Display the debt and goal percentage achieved by the current player."
	| n d net |
	n := self arena submorphs
				detect: [:s | 'numbers' = s externalName].
	d := '$' , self currentPlayer debt negated asInteger asStringWithCommas.
	net := self currentPlayer netAssets / self goal * 100 roundTo: 0.1.
	n string: ' Debt: ' , d , ' Goal Progress: '
			, (net printShowingDecimalPlaces: 1) , '%'.
	n color: self currentPlayer tokenColor! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:26'!
updatePlayers
	"Display the cash held by all players."
	| w |
	self players
		do: [:p | 
			w := self arena submorphs
						detect: [:s | s externalName = p identity].
			w string: '$' , p cash asInteger asStringWithCommas.
			w setBalloonText: 'Cash possessed by ' , p identity maxLineLength: 30.
			w balloonFont: GameBoard gameFont.]! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 19:56'!
windowNamed: aName
	"Answer the window named aName or nil if not found"
	^ windows detect: [:a | a extension externalName = aName] ifNone: [^ nil]
! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 16:30'!
windows
	"Answer windows."
	^ windows! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 19:55'!
windows: anObject
	"Set windows."
	windows := anObject! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:27'!
won
	"Answer true if the game has been won."
	won ifNil: [won := false].
	^ won! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/28/2014 22:27'!
won: aBool
	"Set the value of won."
	won := aBool.! !

!Game methodsFor: 'as yet unclassified' stamp: 'dhn 10/21/2014 17:55'!
wrap: anIndex on: aCollection
	"Answer the next index value of aCollection, wrapping if necessary"
	^ anIndex - 1 \\ aCollection size + 1! !


!Game methodsFor: 'initialize-release' stamp: 'dhn 10/28/2014 21:33'!
boardMgr
	"Answer the value of boardMgr"
	^ boardMgr! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 10/28/2014 21:33'!
boardMgr: anObject
	"Set the value of boardMgr"
	boardMgr := anObject! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 11/3/2014 14:29'!
cellWidth
	"Answer the width of spaces displayed on the board."
	^ path extent x // boardMgr class cellsForGame! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 8/19/2013 09:48'!
centerForToken
	"Answer the initial center for the token."
	| offset |
	offset := self cellWidth // 2.
	^ path left + offset @ (path top + (path height // 2))! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 10/28/2014 21:53'!
getNames
	"Obtain the names of the players."
	self
		playersList: (PlayersList openOn: boardMgr namesCache for: self)! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 10/28/2014 16:18'!
initialize
	players := OrderedCollection new.
	spaces := self class spaceDesc.
	windows := Bag new.
	auctioneers := Set new.
	spaceFreq := Histogram ofSize: spaces size for: self.
! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 7/11/2013 14:53'!
markerSize
	"Answer the size for markers"
	^ 28! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 11/3/2014 16:12'!
quitGame
	"End the game."
	(self confirm: 'Are you sure you want to quit ', boardMgr class, '?')
		ifTrue: [token notNil
				ifTrue: [token delete].
			self boardMgr delete]! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 9/17/2011 13:19'!
scramble: aCollection
	"Try to achieve a better mix."
	|temp|
	temp := aCollection shuffled.
	temp := temp shuffled.
	^temp shuffled.
! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 10/28/2014 22:11'!
setupPlayers
	"Prepare for the entry of player names."
	(boardMgr namesCache
		select: [:t | t contents ~= '                              '])
		do: [:t | self addPlayer: t contents asString]! !

!Game methodsFor: 'initialize-release' stamp: 'dhn 11/3/2014 14:16'!
setupToken: aPlayer
	"Establish a token and a marker for aPlayer."
	| sub |
	sub := self arena submorphs
		detect: [:p | 'path' = p externalName]
		ifNone: [self halt].
	token extent: sub extent x // cellCount * 0.9 @ sub height;
		 center: self centerForToken;
		 onColor: aPlayer tokenColor;
		 who: aPlayer;
		 blinkTime: 1200;
		 state: 0;
		 openInWorld.
	token addMorph: (TextMorph new contents: aPlayer identity;
			beAllFont: GameBoard gameFont;
			 center: self centerForToken;
			 openInWorld).
	sub addMorph: token.
	aPlayer marker
		ifNil: [aPlayer marker: (token iconOrThumbnailOfSize: self markerSize) asMorph.
			aPlayer marker name: aPlayer identity;
				balloonFont: GameBoard gameFont;
				 setBalloonText: 'Marker for ' , aPlayer identity maxLineLength: 30]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Game class
	instanceVariableNames: ''!

!Game class methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 11:31'!
spaceDesc
	"subclasses must describe the spaces"
	self subclassResponsibility! !

!Game class methodsFor: 'as yet unclassified' stamp: 'dhn 4/25/2014 09:53'!
testMode
	TestMode ifNil: [^false].
	^ TestMode! !

!Game class methodsFor: 'as yet unclassified' stamp: 'dhn 4/22/2014 13:16'!
testMode: aBool
	TestMode := aBool! !


Object subclass: #Gamer
	instanceVariableNames: 'identity cash debt inFlow outFlow interestPd paidInterest avoidedDebt assets history passedGo years mgr position tokenColor marker roll totalRoll turns expenseCount status'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!
!Gamer commentStamp: 'dhn 4/25/2012 20:17' prior: 0!
A Player in the game.

Instance Variables
	assets:		<Object>
	avoidedDebt:		<Object>
	cash:		<Object>
	debt:		<Object>
	expenseCount:		<Object>
	history:		<Object>
	identity:		<Object>
	inFlow:		<Object>
	interestPd:		<Object>
	mgr:		<Object>
	outFlow:		<Object>
	paidInterest:		<Object>
	passedGo:		<Object>
	position:		<Object>
	roll:		<Object>
	tokenColor:		<Object>
	totalRoll:		<Object>
	turns:		<Object>
	years:		<Object>

assets
	- xxxxx

avoidedDebt
	- xxxxx

cash
	- xxxxx

debt
	- xxxxx

expenseCount
	- xxxxx

history
	- xxxxx

identity
	- xxxxx

inFlow
	- xxxxx

interestPd
	- xxxxx

mgr
	- xxxxx

outFlow
	- xxxxx

paidInterest
	- xxxxx

passedGo
	- xxxxx

position
	- xxxxx

roll
	- xxxxx

tokenColor
	- xxxxx

totalRoll
	- xxxxx

turns
	- xxxxx

years
	- xxxxx
!


!Gamer methodsFor: 'movement' stamp: 'dhn 10/21/2014 18:15'!
advanceTo: aPosition 
	"Slide the board under a token, forward to aPosition"
	| pos |
	self mgr token addMorph: (self mgr token arrowRight).
	pos := self position - self roll.
	self mgr moveFrom: pos to: aPosition - self roll by: 1.
	self position: (self mgr wrap: aPosition on: self mgr spaces).
! !

!Gamer methodsFor: 'movement' stamp: 'dhn 4/26/2012 17:43'!
forwardTo: anIndex around: aLimit
	"Answer an index value which starts back at 1 when a limit is reached."
	anIndex > aLimit 
		ifFalse: [^anIndex]
		ifTrue:[ "Use recursion to limit gross excesses."
			self passedGo: true.
			self years: 1 + self years.
			^self forwardTo: anIndex - aLimit around: aLimit
			].! !

!Gamer methodsFor: 'movement' stamp: 'dhn 10/20/2014 16:42'!
goTo: aPosition
	|pos|
	self position: aPosition.
	pos := aPosition - self roll.
	(pos < 1) ifTrue: [pos := pos + self mgr spaces size].
	self mgr positionBoardTo: pos.
! !


!Gamer methodsFor: 'accessing' stamp: 'dhn 9/3/2013 21:29'!
assets
	^ assets! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
identity
	"Answer the value of identity"

	^ identity! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
identity: anObject
	"Set the value of identity"

	identity := anObject! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 6/27/2013 17:34'!
marker

	^ marker! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 6/27/2013 17:34'!
marker: anObject

	marker := anObject! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
mgr
	"Answer the value of mgr"

	^ mgr! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
mgr: anObject
	"Set the value of mgr"

	mgr := anObject! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:57'!
passedGo
	"Answer the value of passedGo"

	passedGo ifNil: [passedGo := false].
	^ passedGo! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
passedGo: anObject
	"Set the value of passedGo"

	passedGo := anObject! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:58'!
position
	"Answer the value of position"

	position ifNil: [position := 1].
	^ position! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 10/7/2014 12:24'!
position: anObject
	"Set the value of position; record frequency"

	position := anObject.
	self mgr spaceFreq incrementAt: anObject.! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
roll
	"Answer the value of roll"

	^ roll! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
roll: anObject
	"Set the value of roll"

	roll := anObject! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:59'!
tokenColor
	"Answer the value of tokenColor"

	tokenColor ifNil: [tokenColor := Color gray].
	^ tokenColor! !

!Gamer methodsFor: 'accessing' stamp: 'dhn 4/25/2012 20:18'!
tokenColor: anObject
	"Set the value of tokenColor"

	tokenColor := anObject! !


!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:46'!
avoidedDebt
	"Answer the value of avoidedDebt"

	avoidedDebt ifNil: [avoidedDebt := 0].
	^ avoidedDebt! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
avoidedDebt: anObject
	"Set the value of avoidedDebt"

	avoidedDebt := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
cash
	"Answer the value of cash"

	^ cash! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
cash: anObject
	"Set the value of cash"

	cash := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
debt
	"Answer the value of debt"

	^ debt! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
debt: anObject
	"Set the value of debt"

	debt := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:49'!
expenseCount
	"Answer the value of expenseCount"

	expenseCount ifNil: [expenseCount := 0].
	^ expenseCount! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
expenseCount: anObject
	"Set the value of expenseCount"

	expenseCount := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
history
	"Answer the value of history"

	^ history! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
history: anObject
	"Set the value of history"

	history := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:51'!
inFlow
	"Answer the value of inFlow"
	inFlow ifNil: [inFlow := 0].
	^ inFlow! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
inFlow: anObject
	"Set the value of inFlow"

	inFlow := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:52'!
interestPd
	"Answer the value of interestPd"
	interestPd ifNil: [interestPd := 0].
	^ interestPd! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
interestPd: anObject
	"Set the value of interestPd"

	interestPd := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 9/3/2013 21:22'!
netAssets
	|sum|
	sum := cash + debt.
	assets do: [:a | sum := sum + a assetValue].
	^sum! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:54'!
outFlow
	"Answer the value of outFlow"
	outFlow ifNil: [outFlow := 0].
	^ outFlow! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
outFlow: anObject
	"Set the value of outFlow"

	outFlow := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:55'!
paidInterest
	"Answer the value of paidInterest"

	paidInterest ifNil: [paidInterest := 0].
	^ paidInterest! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
paidInterest: anObject
	"Set the value of paidInterest"

	paidInterest := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/26/2012 17:51'!
rollStats: aRoll
	"Collect statistics concerning the value of the die"
	self roll: aRoll.
	self totalRoll: aRoll + self totalRoll. 
	self turns: 1 + self turns. 
! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/26/2012 17:52'!
tally: anAmount
	self cash: anAmount + self cash.
	anAmount > 0 
		ifTrue: [self inFlow: anAmount + self inFlow]
		ifFalse: [self outFlow: anAmount + self outFlow].
	0 > self cash 
		ifTrue: [
		self mgr updatePlayer.
		self tally: self emergencyLoan].
! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 21:00'!
totalRoll
	"Answer the value of totalRoll"

	totalRoll ifNil: [totalRoll := 0].
	^ totalRoll! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
totalRoll: anObject
	"Set the value of totalRoll"

	totalRoll := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 21:01'!
turns
	"Answer the value of turns"

	turns ifNil: [turns := 0].
	^ turns! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
turns: anObject
	"Set the value of turns"

	turns := anObject! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 21:01'!
years
	"Answer the value of years"

	years ifNil: [years := 0].
	^ years! !

!Gamer methodsFor: 'statistics' stamp: 'dhn 4/25/2012 20:18'!
years: anObject
	"Set the value of years"

	years := anObject! !


!Gamer methodsFor: 'as yet unclassified' stamp: 'dhn 10/29/2014 11:38'!
reportFor: anAsset
	| str thing |
	thing := self assets at: anAsset ifAbsent: [^ 'No such asset named ', anAsset].
	str := String new writeStream.
	str nextPutAll: (thing reportAsAssetFor: self); cr.
	^ str contents! !

!Gamer methodsFor: 'as yet unclassified' stamp: 'dhn 12/21/2013 11:30'!
sendBid
	mgr takeBidOf: self! !

!Gamer methodsFor: 'as yet unclassified' stamp: 'dhn 10/25/2014 18:05'!
sendBid: anAuctioneerName
	mgr takeBidOf: self for: anAuctioneerName! !

!Gamer methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 15:15'!
status
	^ status! !

!Gamer methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 15:15'!
status: anObject
	status := anObject! !


Object subclass: #Histogram
	instanceVariableNames: 'distribution window mgr'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!
!Histogram commentStamp: 'dhn 10/7/2014 17:28' prior: 0!
A Histogram shows the frequency distribution of how often some value occurs.
!


!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 10/21/2014 11:57'!
balloonStringFor: anIndex
	"Answer the balloon string for the distribution cell at anIndex"
	| str plural |
	plural := (1 = (self distribution at: anIndex))
		ifTrue: ['']
		ifFalse: ['s'].
	str := String new writeStream.
	str nextPutAll: (self distribution at: anIndex) printString, ' landing', plural;
		nextPutAll: ' at position ', anIndex printString;
		cr;
		nextPutAll: (self mgr spaces at: anIndex) describeMarket;
		nextPutAll: (self mgr spaces at: anIndex) describe.
	^ str contents
! !

!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 11/22/2014 19:25'!
barGraphOfWidth: aNumber
	"Answer the collection of rectangles representing the values in distribution"
	| col width min bar lower upper |
	width := aNumber // (1.15 * self distribution size).
	min := 6.	"bar size for zero"
	col := OrderedCollection new.
	1 to: self distribution size do: [:i | 
		col add: (bar := RectangleMorph new
			extent: width @ (min + (8 * self distribution at: i));
			borderWidth: 0;
			color: Color transparent;
			beSticky;
			layoutPolicy: TableLayout new;
			listDirection: #bottomToTop;
			setBalloonText: (self balloonStringFor: i);
			balloonFont: GameBoard gameFont).
		lower := RectangleMorph new
			extent: width @ min;
			borderWidth: 1;
			color: (self mgr seasonAt: i) color.
		upper := RectangleMorph new
			extent: width @ (8 * self distribution at: i);
			borderWidth: 0;
			color: Color black.
		bar	addMorph: lower.
		(self distribution at: i) ~= 0 ifTrue: [bar addMorphBack: upper.]].
	^ col! !

!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 11/18/2014 16:48'!
buttonsTarget
	^ RectangleMorph new
		name: 'Button Area';
		beSticky;
		borderWidth: 0;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		layoutInset: 15 @ 0
! !

!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 10/31/2014 12:23'!
cancelButtonFor: anObject
	^ GameButtonMorph new
		target: anObject;
		label: 'Cancel';
		useRoundedCorners;
		actionSelector: #deleteWindow:;
		arguments: {'AllSpace'}
! !

!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 11/18/2014 17:15'!
plotArea
	"Answer a plot area"
	^ PasteUpMorph new
		name: 'Plot Area';
		beSticky;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapDirection: #bottomToTop;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 10 @ 0;
		cellInset: 2 @ 10;
		cellPositioning: #bottomLeft;
		color: Color lightBlue! !

!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 10/10/2014 19:37'!
titleSaying: aString
	^ (StringMorph contents: aString font: (StrikeFont familyName: #ComicPlain size: 17))
		name: 'Title';
		beSticky;
		color: Color white! !

!Histogram methodsFor: 'as yet unclassified' stamp: 'dhn 11/18/2014 17:30'!
updateSpaceHistogramIn: aWindow
	"Bring window showing the space histogram up to date"
	| plotArea |
	plotArea := aWindow findA: PasteUpMorph.
	plotArea removeAllMorphs;
		addAllMorphs: (self barGraphOfWidth: plotArea width)! !


!Histogram methodsFor: 'accessing' stamp: 'dhn 10/7/2014 17:10'!
distribution

	^ distribution! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/7/2014 17:11'!
distribution: anObject

	distribution := anObject! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/7/2014 17:26'!
incrementAt: anIndex
	"Add 1 to the amount in the distribution at anIndex"
	| x |
	x := distribution at: anIndex.
	distribution at: anIndex put: x + 1.! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/7/2014 17:15'!
maximum
	"Answer the maximum of the distribution"
	^ self distribution inject: 0 into: [:a :c | (a > c)	
		ifTrue: [a]
		ifFalse: [c]].! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/12/2014 18:15'!
mgr

	^ mgr! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/12/2014 18:15'!
mgr: anObject

	mgr := anObject! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/7/2014 17:17'!
size
	^ self distribution size! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/10/2014 18:21'!
window

	^ window! !

!Histogram methodsFor: 'accessing' stamp: 'dhn 10/10/2014 18:21'!
window: anObject

	window := anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Histogram class
	instanceVariableNames: ''!

!Histogram class methodsFor: 'instance creation' stamp: 'dhn 10/12/2014 18:14'!
ofSize: size for: anObject
	| arr |
	arr := Array new: size.
	1 to: size do: [:i | arr at: i put: 0].
	^ self new distribution: arr;
		mgr: anObject! !


OrderedCollection subclass: #Marks
	instanceVariableNames: 'arr'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!
!Marks commentStamp: 'dhn 10/23/2014 12:15' prior: 0!
A Marks is an array whose rows reflect presence of players and whose columns correspond to board spaces.

!


!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 18:10'!
arr
	"Answer the arr object"
	^ arr! !

!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 18:10'!
arr: anObject
	"Set arr object"
	arr := anObject! !

!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 11:49'!
initialize
	super initialize! !

!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 17:06'!
ofSize: aPoint
	"Set arr to an array (rows@columns) whose rows reflect presence of players and whose columns correspond to board spaces"
	| row column |
	row := (Array new: aPoint y) atAllPut: String new.
	column := Array new: aPoint x.
	1 to: aPoint x do: [:each | column at: each put: row copy].
	self arr: column! !

!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 17:15'!
place: anObject in: aRow at: aPosition
	"Place anObject in aRow at aPosition."
	(self arr at: aRow) at: aPosition put: anObject
! !

!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 17:07'!
remove: anObject in: aRow
	"If aRow contains anObject, replace it with ''"
	| col ix |
	col := self arr at: aRow.
	ix := col indexOf: anObject ifAbsent: [nil].
	ix ifNotNil: [col at: ix put: String new]! !

!Marks methodsFor: 'as yet unclassified' stamp: 'dhn 10/23/2014 17:44'!
rowAt: anIndex
	"Answer the row of arr at anIndex."
	^ self arr at: anIndex! !


Object subclass: #Season
	instanceVariableNames: 'desc color textColor range assetName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!
!Season commentStamp: 'dhn 4/14/2012 15:11' prior: 0!
A Season is the collection of attributes associated with, for example:
	a season (Farming Game, Construction Game)
	a property set (Monopoly)
	
Instance Variables
	color:		<Color>
	desc:		<String>
	range:		<Point>
	textColor:		<aBool>

color
	- the color of the bar displayed above the cells (board spaces) for the season

desc
	- the description of the season, e.g. 2ND HAY CUTTING, 

range
	- from@to board cell (space) numbers which define the duration of the season

textColor
	- whether the color used for the desc font is white
!


!Season methodsFor: 'accessing' stamp: 'dhn 1/22/2014 13:41'!
assetName

	^ assetName! !

!Season methodsFor: 'accessing' stamp: 'dhn 1/22/2014 13:41'!
assetName: anObject

	assetName := anObject! !

!Season methodsFor: 'accessing' stamp: 'dhn 2/13/2012 11:42'!
color
	"Answer the value of color"

	^ color! !

!Season methodsFor: 'accessing' stamp: 'dhn 2/13/2012 11:42'!
color: anObject
	"Set the value of color"

	color := anObject! !

!Season methodsFor: 'accessing' stamp: 'dhn 2/13/2012 11:45'!
desc
	"Answer the value of desc"

	^ desc! !

!Season methodsFor: 'accessing' stamp: 'dhn 2/13/2012 11:45'!
desc: anObject
	"Set the value of desc"

	desc := anObject! !

!Season methodsFor: 'accessing' stamp: 'dhn 2/13/2012 11:46'!
range
	"Answer the value of range"

	^ range! !

!Season methodsFor: 'accessing' stamp: 'dhn 4/14/2012 15:08'!
range: aPoint
	"Set the value of range as from@to"

	range := aPoint! !

!Season methodsFor: 'accessing' stamp: 'dhn 4/14/2012 15:07'!
textColor
	"Answer whether the color of the text is white (true) or black"

	textColor ifNil: [textColor := false].
	^ textColor! !

!Season methodsFor: 'accessing' stamp: 'dhn 4/14/2012 15:06'!
textColor: aBool
	"Set the value of textColor"

	textColor := aBool! !


!Season methodsFor: 'initialize-release' stamp: 'dhn 2/24/2012 21:51'!
initialize
	super initialize! !


Object subclass: #Speed
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Game-Model'!
!Speed commentStamp: 'dhn 3/31/2014 13:35' prior: 0!
A Speed computes the speed in MPH from time and distance
	'Speed new'

Instance Variables
!


!Speed methodsFor: 'as yet unclassified' stamp: 'dhn 4/8/2014 15:51'!
compute
	| time distance speed output |
	time := '00:', (FillInTheBlank request: 'Enter the Elapsed Time' initialAnswer: 'hh:mm:ss').
	distance := (FillInTheBlank request: 'Enter the Distance Travelled' initialAnswer: 'miles').
	speed := distance / (time asDuration asSeconds / 3600.0).
	output := distance, ' miles in ', time, ' = ', (speed printShowingDecimalPlaces:  2), ' MPH'.
	UserDialogBoxMorph 
		inform: output 
		title: 'Speed in Miles per Hour'.
	^ speed! !

!Speed methodsFor: 'as yet unclassified' stamp: 'dhn 3/31/2014 13:35'!
howTo
	"Speed new"! !

!Speed methodsFor: 'as yet unclassified' stamp: 'dhn 3/31/2014 13:34'!
initialize
	super initialize.
	^ self compute
! !
