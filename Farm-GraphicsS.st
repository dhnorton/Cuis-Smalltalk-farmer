AuctionList subclass: #FarmAuctionList
	instanceVariableNames: 'optionButton player assetButton showingAssets lot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/14/2013 20:59'!
assetButton
	^ assetButton! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/15/2013 14:38'!
assetButtonFor: anObject 
	^ GameButtonMorph new target: anObject;
		 label: 'Assets';
		 useRoundedCorners;
		 actionSelector: #assetPressed! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/13/2014 19:11'!
assetButtons
	^ OrderedCollection new
		add: (startButton := self beginButtonFor: self);
		add: (soldButton := self soldAssetButtonFor: self);
		add: (endButton := self endAssetButtonFor: chanter);
		add: (cancelButton := self cancelButtonFor: chanter);
		yourself! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/21/2014 10:08'!
assetDescription: aString 
	| choice message item |
	choice := self
				itemName: (self collection at: selectedItem).
	message := 'lotDescription:' asSymbol.
	^ item := Compiler evaluate: (choice, ' ', message, ' ', choice storeString).
! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/12/2014 12:56'!
assetOpeningBid
	| cls amt str |
	cls := Smalltalk at: lot asSymbol.
	amt := cls price * cls auctionQuantity / 2.
	chanter currentBid: amt.
	chanter buyer: 'First Friendly Bank'.
	soldButton enableButton.
	startButton disableButton.
	str := String new writeStream.
	str nextPutAll: 'A bid of $';
		 nextPutAll: amt asStringWithCommas;
		 nextPutAll: ' (half the list price) was made by the bank'.
	self append: str! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/12/2014 21:27'!
beginButtonFor: anObject
	^ GameButtonMorph new
		target: anObject;
		label: 'Begin Auction';
		useRoundedCorners;
		disableButton;
		actionSelector: #startOptionOrAssetAuction.
! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/5/2014 16:01'!
changed: aParameter 
	"Receiver changed. The change is denoted by the argument aParameter. 
	Usually the argument is a Symbol that is part of the dependent's change 
	protocol. Inform all of the dependents."

	self dependents do: [:aDependent | aDependent update: aParameter]! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 20:30'!
choiceButtons
	^ OrderedCollection new 
		add: (optionButton := self optionButtonFor: chanter);
		add: (assetButton := self assetButtonFor: chanter);
		yourself! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:59'!
describeAssetLot
	"Answer the description of the asset being auctioned."
	lot := self itemName: (collection at: item).
! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:53'!
describeOptionLot
	"Answer the description of what is being auctioned."
	lot := self itemName: (collection at: item).
! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/22/2013 11:21'!
initialize
	super initialize.
	showingAssets := false! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 17:00'!
lot
	^ lot! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/14/2013 20:59'!
optionButton
	^ optionButton! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/15/2013 14:38'!
optionButtonFor: anObject 
	^ GameButtonMorph new target: anObject;
		 label: 'Options';
		 useRoundedCorners;
		 actionSelector: #optionPressed ! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 16:16'!
player
	"Answer the value of player"

	^ player! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 16:16'!
player: anObject
	"Set the value of player"

	player := anObject! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 10/6/2014 15:01'!
setButtonsForBeginAuction
	startButton disableButton.
! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 12:06'!
setButtonsForHammerDown
	soldButton disableButton.
	startButton disableButton.
	cancelButton disableButton.
	endButton enableButton.
	biddersPane removeAllMorphs.
	self collection: OrderedCollection new;
		 changed: #list.
! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 20:39'!
setSelection: anInteger 
	"Cause the option or asset description to be displayed"
	selectedItem := anInteger.
	chanter bidding
		ifTrue: [selectedItem isZero
				ifTrue: [selectedItem := 1].
			chanter
				delta: (Auctioneer bidBump at: selectedItem)]
		ifFalse: [selectedItem ~= 0
				ifTrue: [item := selectedItem.
					showingAssets
						ifTrue: [text1 := self 
										assetDescription: (collection at: selectedItem)]
						ifFalse: [text1 := self player
										optionDescription: (collection at: selectedItem)].
					startButton enableButton]
				ifFalse: [startButton disableButton.
					text1 := '']].
	self changed: #currentSelection;
		 changed: #text1! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/22/2013 11:27'!
showingAssets
	^showingAssets! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/22/2013 11:27'!
showingAssets: aBool
	showingAssets := aBool! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 11/26/2014 21:13'!
soldAsset
	| seller recipient asset |
	self setButtonsForHammerDown.
	biddersPane removeAllMorphs.
	self collection: OrderedCollection new;
		 changed: #list.
	seller := chanter mgr currentPlayer.
	seller sellAsset: lot for: chanter currentBid.
	chanter buyer = 'First Friendly Bank'
		ifFalse: [
			recipient := chanter mgr players detect: [:a | a identity = chanter buyer] ifNone: [self halt].
			recipient buyAsset: lot for: chanter currentBid].
	asset := Smalltalk at: lot asSymbol.
	self append: 'SOLD!! ' , (asset lotDescription: lot) , ' to ' , chanter buyer , ' for $' , chanter currentBid asStringWithCommas.
	chanter mgr updatePlayer.
	0 > seller cash
		ifTrue: [chanter mgr disableAll: {'End Turn'}.
			chanter mgr enableAll: {'Auction'}].
	chanter currentBid: 0.
	chanter mgr statWindow
		ifNotNil: [chanter mgr statWindow setSelection: chanter mgr statWindow currentSelection]! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 11/6/2014 21:29'!
soldOption
	| seller recipient |
	self setButtonsForHammerDown.
	biddersPane removeAllMorphs.
	self collection: OrderedCollection new;
		 changed: #list.
	seller := chanter mgr currentPlayer.
	seller sellOption: lot for: chanter currentBid.
	recipient := chanter mgr playerNamed: chanter buyer.
	recipient buyOption: lot for: chanter currentBid.
	self append: 'SOLD!! '
			,  lot , ' option to ' , chanter buyer , ' for $' , chanter currentBid asStringWithCommas.
	chanter mgr updatePlayer.
	0 > seller cash
		ifTrue: [chanter mgr disableAll: {'End Turn'}.
			chanter mgr enableAll: {'Auction'}].
	chanter currentBid: 0.
	chanter mgr statWindow
		ifNotNil: [chanter mgr statWindow setSelection: chanter mgr statWindow currentSelection]! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:56'!
startAssetAuction
	biddersPane addAllMorphs: chanter bidderButtons.
	self setButtonsForBeginAuction; describeAssetLot; assetOpeningBid.
	chanter startAuction! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:54'!
startOptionAuction
	biddersPane addAllMorphs: chanter bidderButtons.
	self setButtonsForBeginAuction; describeOptionLot. 
	chanter startAuction! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/12/2014 21:23'!
startOptionOrAssetAuction
	showingAssets 
		ifTrue:[self startAssetAuction]
		ifFalse: [self startOptionAuction].! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 1/12/2014 12:46'!
startingBidFor: anInteger 
	"Display the opening bid amount"
	| str opening |
	anInteger > 0
		ifTrue: [item := collection at: selectedItem.
			opening := (player assets
						at: (self itemName: item)) class price // 2.
			str := String new writeStream.
			str nextPutAll: 'The opening bid for ';
				 nextPutAll: ( self itemName: item);
				 nextPutAll: ' will be for ';
				 nextPutAll: '$' , opening asStringWithCommas;
				 nextPutAll: ' (half the list price)';
				 nextPutAll: ' by the bank.';
				 cr.
			text1 := str contents.
			chanter currentBid: opening.
			chanter buyer: 'First Friendly Bank'.
			soldButton enableButton.
			startButton enableButton]
		ifFalse: [startButton disableButton.
			soldButton disableButton.
			biddersPane removeAllMorphs.
			text1 := '']! !

!FarmAuctionList methodsFor: 'as yet unclassified' stamp: 'dhn 12/13/2013 20:02'!
windowLabelled: aString for: anObject 
	| window depth |
	depth := 0.6.
	window := (CustomSystemWindow labelled: aString)
				model: self.
	window endReceiver: chanter;
		endMessage: #deleteAuction.
	window
		addMorph: (PluggableListMorph
				on: self
				list: #list
				selected: #currentSelection
				changeSelected: #setSelection:)
		frame: (0 @ 0.25 extent: 0.28 @ (depth - 0.1)).
	window
		addMorph: (listHeading := TextMorph new)
		frame: (0.01 @ 0.18 extent: 0.28 @ depth - 0.9).
		listHeading contents: 'ASSETS';
			borderWidth: 0;
			color: Color black.
	window
		addMorph: (buttonsPane := self buttonsPanel)
		frame: (0 @ 0 extent: 1 @ 0.15).
	buttonsPane color: Color transparent;
		borderWidth: 0.
	window
		addMorph: (PluggableTextMorph
				on: self
				text: #text1
				accept: #accept1:from:
				readSelection: nil
				menu: #menu:)
		frame: (0.28 @ 0.15 extent: 0.72 @ depth).
	window
		addMorph: (biddersPane := self biddersPanel)
		frame: (0 @ (depth + 0.15) extent: 1 @ 0.20).
	biddersPane color: Color white.
	self removeWindowMenu: window.
	^ window! !


GamePlot subclass: #FarmPlot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!

!FarmPlot methodsFor: 'as yet unclassified' stamp: 'dhn 9/26/2014 13:40'!
initialize
	super initialize.

! !

!FarmPlot methodsFor: 'as yet unclassified' stamp: 'dhn 11/2/2014 11:47'!
setUpPlotFor: aTarget
	"Set up a plot of players' progress toward aTarget (goal) of the game"
	| depth width |
	self extent: 400@400.
	depth := 1.2 * aTarget negated.
	width := (#(120 200 600) at: self scaleXAxis).
	plotRectangle := -2@depth corner: width@ 50000.
	coordinatesUnitRectangle := 0@0  corner: 1@1.
	relations := OrderedCollection new.
	backgroundColor := Color white.
	axesColor := Color black.
	xLabelsAbove := true.
	yLabelsLeft := false.
	self xUnit: (#(10 20 50) at: self scaleXAxis).
	self yUnit: ({20000. 50000. 100000. 200000. 500000. 1000000. 1500000. 2000000. 2500000. 3500000. 5000000} at: (1 + (mgr goal / mgr boardMgr class defaultGoal * 1.0) floor)).
! !


MGRelationOnCollection subclass: #FarmRelation
	instanceVariableNames: 'lineWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!

!FarmRelation methodsFor: 'as yet unclassified' stamp: 'dhn 1/3/2014 18:31'!
drawContinuousOn: aCanvas transformation: aPlotToFormTransformation
	collection overlappingPairsDo:
	[:firstPoint :secondPoint|
		aCanvas 
			line: (aPlotToFormTransformation toFormPoint: firstPoint) asIntegerPoint
			to: (aPlotToFormTransformation toFormPoint: secondPoint) asIntegerPoint
			width: self lineWidth
			color: color
	]! !


!FarmRelation methodsFor: 'accessing' stamp: 'dhn 1/3/2014 18:31'!
lineWidth
	lineWidth ifNil: [lineWidth := 2].
	^ lineWidth! !

!FarmRelation methodsFor: 'accessing' stamp: 'dhn 1/3/2014 18:31'!
lineWidth: anObject

	lineWidth := anObject! !


Token subclass: #FarmToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!

!FarmToken methodsFor: 'as yet unclassified' stamp: 'dhn 5/17/2014 21:38'!
initialize
	super initialize.
	self cellPositioning: #leftCenter.
	self setBalloonText: 'A token representing the player. When the Move button is clicked, a die is "rolled" then the token moves that number of spaces.' maxLineLength: 30.
	self balloonFont: GameBoard gameFont.
! !

!FarmToken methodsFor: 'as yet unclassified' stamp: 'dhn 11/26/2013 20:26'!
waiting
	"Sit idle; do nothing."
	| season |
	season := Farm harvestSeason at: self who position.
	season = #WINTER
		ifTrue: [self who options isEmpty
				ifTrue: [self who mgr disableAll: {'Option'}]
				ifFalse: [self who mgr won
						ifTrue: [self who mgr wonButtonsState]
						]].
	die
		ifNotNil: [die delete]! !


GameBoard subclass: #FarmingGame
	instanceVariableNames: 'seasons namesCache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!FarmingGame commentStamp: 'dhn 9/5/2011 09:32' prior: 0!
Manage the visual effects of the Farming Game.

Instance Variables
	board:		<Object>
	fates:		<Object>
	options:		<Object>
	players:		<Object>
	seasons:		<Object>

board
	- xxxxx

fates
	- xxxxx

options
	- xxxxx

players
	- xxxxx

seasons
	- xxxxx
!


!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/3/2014 14:24'!
initialize
	| bns assoc |
	super initialize.
	handler := Farm new.
	handler boardMgr: self.
	self handler arena: board.
	board addMorph: (bns := self setupButtonsPanel) fullFrame: (LayoutFrame
				fractions: (0 @ 0.2 corner: 1 @ 0.2)
				offsets: (0 @ 50 negated corner: 5 @ 0)).
	self handler buttons: bns.
	board addMorph: self setupTitle 
			fullFrame: (LayoutFrame
              		fractions: (0 @ 0.1 corner: 1 @ 0.1) 
				offsets: (0@50 negated corner: 0@0)).
	board addMorph: self setupNumbers 
			fullFrame: (LayoutFrame
	             	fractions: (0 @ 0.8 corner: 1 @ 0.8) 
				offsets: (0@50 negated corner: 0@0)).
	self cells: (self setupCells: board).
	self setupMarkerAreas: self cells.
	self handler cellsAt: 1.
	self handler path: (self setupPath: board).
	board addMorph: self setupPath 
			fullFrame: (LayoutFrame new 
				topFraction: 0.6;
				bottomFraction: 0.7;
				leftFraction: 0.0;
				rightFraction: 1.0).
	assoc := self handler parseSeasonsAt: 1. 
	self startButtonSet: board.
	self showSeasons: assoc.
	self initializeNamesCache.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 3/24/2012 11:07'!
initializeNamesCache
	self
		namesCache: (OrderedCollection
				with: PlayersList entryField
				with: PlayersList entryField
				with: PlayersList entryField
				with: PlayersList entryField
				with: PlayersList entryField
				with: PlayersList entryField)! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/2/2014 20:30'!
setupBoard
	self name: self class name;
		openInWorld;
		color: Farm boardColor;
		extent: (World width)@(World height * 0.8);
		sticky: true;
		layoutPolicy: ProportionalLayout new;
		addMorph: (PasteUpMorph new 
			color: Color transparent;
			extent: self extent)
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/11/2014 20:24'!
setupButtonsPanel
	"Set up panel to contain buttons"
	^ (RectangleMorph new 
		borderWidth: 0;
		color: Color transparent;
		name: 'buttons';
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
	 	wrapCentering: #center;
	 	layoutInset: 4 @ 0;
		cellInset: 12@5;
		wrapCentering: #center;
		beSticky;
	 	wrapDirection: #leftToRight)! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/2/2014 20:22'!
setupButtonsPanel: aBoard 
	| panel |
	panel := RectangleMorph new borderWidth: 0;
				 color: Color transparent;
				 name: 'buttons';
				 layoutPolicy: TableLayout new.
	panel listDirection: #leftToRight;
		 listCentering: #center;
		 wrapCentering: #center;
		 layoutInset: 4 @ 0;
		cellInset: 12@5;
		wrapCentering: #center;
		 wrapDirection: #leftToRight.
	self
		addMorph: panel
		fullFrame: (LayoutFrame
				fractions: (0 @ 0.2 corner: 1 @ 0.2)
				offsets: (0 @ 50 negated corner: 5 @ 0)).
	^ panel! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/18/2014 20:39'!
setupCells: aBoard 
	| set bm txt |
	set := OrderedCollection new.
	1
		to: self class cellsForGame
		do: [:k | 
			| j |
			j := k - 1.
			bm := Morph new.
			aBoard addMorph: bm fullFrame: (LayoutFrame new topFraction: 0.27;
					 bottomFraction: 0.7;
					 leftFraction: j / 7;
					 rightFraction: k / 7).
			bm color: self class cellColor;
				beSticky;
				name: 'cell'.
			bm 	extension locked: true.
			txt := TextMorph new.
			bm
				addMorph: txt
				fullFrame: (LayoutFrame
						fractions: (0 @ 0 corner: 1 @ 0.5)
						offsets: nil).
			txt fillsOwner: true;
				 borderWidth: 1.
			set add: txt].
	^ set! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 7/6/2013 12:57'!
setupMarkerAreas: theCells 
	| area |
	theCells
		do: [:each | 
			area := MarkerArea new.
			each owner addMorph: area.
			area winitialize]! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/2/2014 21:04'!
setupMorphs: aBoard
	self handler buttons: (self setupButtonsPanel: aBoard). 
	self setupTitle: aBoard. 
	self setupNumbers: aBoard. 
	self cells: (self setupCells: aBoard). 
	self setupMarkerAreas: self cells.
	self handler cellsAt: 1.
	self handler path: (self setupPath: aBoard).
	self startButtonSet: aBoard.
	self pasteUp: (self findA: PasteUpMorph).
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/3/2014 10:54'!
setupNumbers
	"Answer the initial display numbers"
	^ TTSampleStringMorph new 
		font: TTFontDescription default;
		color: Color white;
		name: 'numbers';
		string: '____'.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 12/3/2011 11:16'!
setupNumbers: aBoard
	|title|
	title := TTSampleStringMorph new font: TTFontDescription default..
	aBoard
		addMorph: title
		fullFrame: (
			LayoutFrame
             	fractions: (0 @ 0.8 corner: 1 @ 0.8) 
			offsets: (0@50 negated corner: 0@0)
		).
	title color: Color white;
		name: 'numbers';
		string: '____'.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/3/2014 11:35'!
setupPath
	"Set up the path for tokens"
	^ BorderedMorph new 
		beTransparent; 
		extent: 0 @ 0; 
		borderWidth: 0; 
		layoutInset: 0; 
		cellInset: 0; fenceEnabled; 
		layoutPolicy: ProportionalLayout new; 
		listCentering: #topLeft; 
		cellPositioning: #center; 
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		name: 'path'.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 12/31/2011 10:10'!
setupPath: aBoard 
	| via |
	via := BorderedMorph new 
		beTransparent; 
		extent: 0 @ 0; 
		borderWidth: 0; 
		layoutInset: 0; 
		cellInset: 0; fenceEnabled; 
		layoutPolicy: ProportionalLayout new; 
		listCentering: #topLeft; 
		cellPositioning: #center; 
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		name: 'path'.
	aBoard addMorph: via fullFrame: (LayoutFrame new topFraction: 0.6;
			 bottomFraction: 0.7;
			 leftFraction: 0.0;
			 rightFraction: 1.0).
	^ via! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/3/2014 10:48'!
setupTitle
	"Answer the title of the game"
	^ TTSampleStringMorph new 
		font: TTFontDescription default;
		color: Color white;
		name: 'title';
		string: 'Farming Game'.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 11/3/2014 10:03'!
setupTitle: aBoard
	|title|
	title := TTSampleStringMorph new font: TTFontDescription default..
	(self findA: PasteUpMorph)
		addMorph: title
		fullFrame: (
			LayoutFrame
              	fractions: (0 @ 0.1 corner: 1 @ 0.1) 
			offsets: (0@50 negated corner: 0@0)
		).
	title color: Color white;
		name: 'title';
		string: 'Farming Game'.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 2/26/2012 17:20'!
showSeasons: associations 
	| set d pt bm txt |
	set := OrderedCollection new.
	d := self cells size.
	associations
		do: [:k | 
			| first last sea txtcolor |
			pt := k key.
			first := pt x - 1.
			last := pt y.
			bm := Morph new.
			bm name: 'season'.
			self board addMorph: bm fullFrame: (LayoutFrame new topFraction: 0.23;
					 bottomFraction: 0.27;
					 leftFraction: first / d;
					 rightFraction: last / d).
			sea := k value.
			bm
				color: sea color.
			txt := TextMorph new
						beAllFont: ((TextStyle default fontOfSize: 14)
								emphasized: 1).
			bm
				addMorph: txt
				fullFrame: (LayoutFrame
						fractions: (0.4 @ 0 corner: 0.6 @ 1)
						offsets: nil).
			sea textColor ifTrue: [txtcolor := Color white]
				ifFalse: [txtcolor := Color black].
			txt fillsOwner: true;
				 color: txtcolor;
				 contents: sea desc;
				 centered;
				 borderWidth: 0.
			set add: txt].
	self rmSeasons.
	^ set! !


!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 3/22/2012 10:50'!
makeAddPlayerButton
	| btn |
	btn := self makeButton: 'Players' action: #getNames state: nil.
	btn setBalloonText: 'Asks the names of players. Use this button to add at least two players, then press Start.' maxLineLength: 30.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/6/2014 14:32'!
makeAuctionButton
	| btn |
	btn := self
				makeButton: 'Auction'
				action: #doAuction
				state: nil.
	btn setBalloonText: 'Auction options and equipment' maxLineLength: 20.
	^ btn! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 5/17/2014 21:30'!
makeButton: label action: actionSymbol state: stateSymbol 
	| btn |
	btn := GameButtonMorph new label: label;
				 extent: 100 @ 40.
	btn target: self handler;
		 name: label;
		 useRoundedCorners;
		 actionSelector: actionSymbol;
		balloonFont: GameBoard gameFont.
	^ btn! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 1/21/2012 16:53'!
makeBuyOptionButton
	| btn |
	btn := self makeButton: 'Option' action: #showOpts state: nil.
	btn setBalloonText: 'See what options you have and make purchases during WINTER.' maxLineLength: 30.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2011 16:03'!
makeDrawFateButton
	| btn |
	btn := self makeButton: 'Fate' action: #drawFate state: nil.
	btn setBalloonText: 'Determine your Farmer''s Fate.' maxLineLength: 25.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2011 16:47'!
makeEndTurnButton
	| btn |
	btn := self makeButton: 'End Turn' action: #endTurn state: nil.
	btn setBalloonText: 'Let the next player have a turn. Not enabled as long as Expense, Fate, Harvest, or Move are enabled.' maxLineLength: 25.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2011 16:00'!
makeHarvestButton
	| btn |
	btn := self makeButton: 'Harvest' action: #harvest state: nil.
	btn setBalloonText: 'Harvest the crop for the season indicated above the space.' maxLineLength: 25.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 12/7/2011 13:01'!
makeMoveButton
	| btn |
	btn := self makeButton: 'Move' action: #move state: nil.
	btn setBalloonText: 'Move the player from one to six spaces, based on the "roll" of a die.' maxLineLength: 25.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2011 16:04'!
makePayExpenseButton
	| btn |
	btn := self makeButton: 'Expense' action: #payExpense state: nil.
	btn setBalloonText: 'Pay the farming expenses which are owed.' maxLineLength: 25.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/29/2011 11:36'!
makePayLoanButton
	| btn |
	btn := self makeButton: 'Pay Loan' action: #payLoan state: nil.
	btn setBalloonText: 'Transfer some cash to pay off some debt.' maxLineLength: 20.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 11/3/2011 22:27'!
makeQuitGameButton
	| btn |
	btn := self makeButton: 'Quit' action: #quitGame state: nil.
	btn setBalloonText: 'Completely ends the game. Nothing is saved.' maxLineLength: 20.
	btn color: (Color orange alpha: 0.9).
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2014 18:32'!
makeSettingsButton
	| btn |
	btn := self
				makeButton: 'Settings'
				action: #doSettings
				state: nil.
	btn setBalloonText: 'Change some of the game parameters' maxLineLength: 20.
	^ btn! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/3/2014 16:40'!
makeShowStatsButton
	| btn |
	btn := self makeButton: 'Stats' action: #doStats state: nil.
	btn setBalloonText: 'Show statistics which have been accumulated during the game.' maxLineLength: 35.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2011 16:12'!
makeTourButton
	| btn |
	btn := self makeButton: 'Tour' action: #doTour state: nil.
	btn setBalloonText: 'Cause the board to move around so you can see what is in all the spaces.' maxLineLength: 25.
	^btn
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 11/2/2014 20:58'!
playButtonSet: aMorph 
	| sub |
	sub := aMorph submorphs
		detect: [:p | 'buttons' = p externalName]
		ifNone: [self halt].
	self rmButtons: sub.
	sub addAllMorphs: (OrderedCollection new
		add: self makeShowStatsButton;
		add: self makeAuctionButton;
		add: self makePayLoanButton;
		add: self makeBuyOptionButton;
		add: self makeEndTurnButton;
		add: self makePayExpenseButton;
		add: self makeDrawFateButton;
		add: self makeHarvestButton;
		add: self makeMoveButton;
		add: self makeQuitGameButton;
		yourself).
! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 9/16/2011 13:14'!
quitGameExitSqueakCheck
	"Use the Preferences cmdDotEnabled as an indicator that we are run-time or not."
	Preferences cmdDotEnabled ifFalse: [Smalltalk quitPrimitive]! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 9/15/2011 21:40'!
rmButtons: aMorph
	"Remove button submorphs from aMorph named 'buttons'."
	(('buttons' = aMorph externalName) and: [aMorph submorphs notNil]) ifTrue: [
		aMorph submorphs do: [:sm| sm delete].
		].! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 9/14/2011 10:32'!
rmSeasons
	"Get rid of some season submorphs which are obsolete. This relies on there being at most 3 active season submorphs."
	['season' = (self board submorphs at: 4) externalName] whileTrue: [
		(self board submorphs at: 4) delete].! !

!FarmingGame methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2014 18:30'!
startButtonSet: aMorph 
	| sub |
	sub := aMorph submorphs
				detect: [:ea | 'buttons' = ea externalName]
				ifNone: [^ nil].
	self rmButtons: sub.
	sub addMorph: self makeQuitGameButton.
	sub addMorph: self makeTourButton.
	sub addMorph: self makeSettingsButton.
	sub addMorph: self makeAddPlayerButton! !


!FarmingGame methodsFor: 'accessing' stamp: 'dhn 3/22/2012 10:36'!
namesCache
	"Answer the value of namesCache"

	^ namesCache! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 3/22/2012 10:36'!
namesCache: anObject
	"Set the value of namesCache"

	namesCache := anObject! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 9/4/2011 16:53'!
seasons
	"Answer the value of seasons"

	^ seasons! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 9/4/2011 16:53'!
seasons: anObject
	"Set the value of seasons"

	seasons := anObject! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

FarmingGame class
	instanceVariableNames: ''!

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 22:03'!
addApplication
	Smalltalk addToStartUpList: FarmingGame.
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 11/3/2014 12:39'!
boardColor
	"Answer the color of the board itself"
	^Color yellow alpha: 0.5! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 11/3/2014 12:40'!
cellColor
	"Answer the color of the board spaces for the Farming Game"
	^Color palePeach! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 11/3/2014 12:40'!
cellsForGame
	"Answer the number of board spaces for the Farming Game"
	^7! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 22:03'!
clearApplication
	Smalltalk removeFromStartUpList: FarmingGame.
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:06'!
closeAllOpenWindowsMessage
	^'Do you really want to close all windows?' translated! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:06'!
closeAllWindows
	"LaserGame closeAllWindows"
	(SystemWindow windowsIn: World satisfying: [:w | w model canDiscardEdits])
		do: [:w | w delete]! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 3/22/2012 10:30'!
debtLimit
	"Answer the debt limit for a player to stay in the game."
	^ -50000! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/26/2014 12:39'!
defaultGoal
	"Answer the default winning net asset goal"
	^ 250000.
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:07'!
disableFeatures
	Preferences disable: #warnIfNoSourcesFile.
	Preferences disable: #warnIfNoChangesFile.
	Preferences disable: #cmdDotEnabled.
	Preferences enable: #eToyFriendly.
	Preferences enable: #noviceMode.
	Preferences compileHardCodedPref: #cmdGesturesEnabled enable: false.
	Preferences compileHardCodedPref: #cmdKeysInText enable: false.
	HaloMorph compileSilently: 'addCircleHandles' classified: 'disable'.
	

! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 12/8/2011 10:58'!
expenseDesc
	"Answer the description of each expense."
	| temp |
	temp := OrderedCollection new.
	
2 timesRepeat: [temp add:(#tally:->500 negated)->'Equipment breakdown,
PAY $500'].

2 timesRepeat: [temp add:(#tally:->1000 negated)->'Equipment in the shop. The delay costs.
	
PAY $1,000'].

2 timesRepeat: [temp add:(#tally:->500 negated)->'Parts bill due,
PAY $500'].

2 timesRepeat: [temp add:(#tally:->1000 negated)->'Fuel bill due,
PAY $1,000'].

2 timesRepeat: [temp add:(#fertilizer:->100)->'Fertilizer bill due,
PAY $100 per acre'].

2 timesRepeat: [temp add:(#tally:->3000 negated)->'Seed bill due,
PAY $3,000'].

2 timesRepeat: [temp add:(#interest:->0.1)->'Semi-annual interest due. 
PAY 10% on Bank Notes on hand'].

2 timesRepeat: [temp add:(#noTractor:->2000)->'Custom hire bill due,
PAY $2,000 if you do not own a Tractor'].

2 timesRepeat: [temp add:(#noHarvester:->2000)->'Custom hire bill due,
PAY $2,000 if you do not own a Harvester'].

temp add:(#tally:->1500 negated)->'Farm real estate taxes due,
PAY $1,500'.
	
temp add:(#tally:->1500 negated)->'Farmer''s insurance due,
PAY $1,500'.
	
temp add:(#tally:->500 negated)->'Monthly electric bill due for irrigation pumping,
PAY $500'.
	
temp add:(#wireWorms:->100)->'Wire worms infect Grain acreage,
PAY $100 per grain acre to fumigate'.
	
temp add:(#ifCows:->500)->'Veterinary bill due,
PAY $500 if you own cows'.
	
temp add:(#feedBill:->500)->'Feed bill due,
PAY $500 per cow'.
	
		^temp! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 6/25/2013 13:42'!
fatesDesc
	"Answer the description of each Farmer's Fate."
	^{
(#interest:->0.1)->'Banks raise interest rates. PAY 10% of outstanding loan balance as additional interest'.

(#garnish:->true)->'IRS garnishes your income after finding errors on your tax return. 
For the rest of the year, draw OPERATING EXPENSE cards during Harvests but do not receive Harvest check.'.

(#helens:->nil)->'Natural Disaster - Mt. St. Helens blows. You are luckily out of the Ash Path. 
Your ash-free hay jumps in price. COLLECT $500 per Hay acre. 
Other players may have been hit and must pay $100 per acre to clean up mess.'.

(#cutworms:->300)->'Cutworms eat sprouting Fruit buds. EPA bans control spray. PAY $300 per Fruit acre'.

(#uncleBert:->nil)->'Uncle Bert dies and leaves you 10 acres of Hay, if you can raise 
the $10,000 cash to pay Inheritance Tax and small remaining mortgage.'.

(#horseHay:->100)->'Rich folks from the city bought the neighboring farm and pay you a premium 
for your best hay to feed their fancy show horses. COLLECT $100 per Hay acre.'.

(#noTractor:->3000)->'Custom hire bill due. If you have no Tractor PAY $3,000'.

(#noTractor:->3000)->'Custom hire bill due. If you have no Tractor PAY $3,000'.

(#noHarvester:->2500)->'The President slaps on a Grain Embargo while you''re waiting for the custom harvester to show up. 
Instant market collapse. PAY $2,500 if you don''t own your own Harvester'.

(#slaughterCows:->nil)->'A leaking electrical motor at Feed Mill contaminates your load of feed with PCB. 
State Ag Inspector requires you to slaughter cows on your farm (not on leased land) 
with no reimbursement.'.

(#heldCalves:->2000)->'Held some of your calves and the market jumped. COLLECT $2,000 if you have cows.'.

(#maggotFly:->500)->'The Apple Maggot Fly, cousin of the dreaded Medfly, is found in an insect trap in your orchard. 
Your orchard is quarantined and you lose a lucrative export contract. PAY $500 per Fruit acre.'.

(#goDirectly:->3)->'Drought year!! Go back to the second week of January. 
Do not collect your $5,000 year''s wages.'.

(#oilLease:->nil)->'Oil company pays you $100 per acre for Oil and Gas lease on your farm.'.

(#boostWheat:->2000)->'Russian sale boosts wheat prices. COLLECT $2,000'.

(#wheatWeeds:->nil)->'Windy spring, didn''t get your wheat sprayed. 
Weeds cut your wheat crop in half throughout this year.'.

(#truckerStrike:->1000)->'Truckers strike delays Fruit in transport, lots of spoilage. 
PAY $1,000 per Fruit acre.'.

(#halveCherries:->nil)->'Some TV talk show host''s worries about the "dangers" of the primary bug control spray 
you use on your cherries causes a National cherry market collapse. 
Cut your cherry crop in half if you haven''t already harvested this year.'.

(#disasterPmt:->100)->'Federal Crop Disaster payment saves your bacon. COLLECT $100 per grain acre.'.

(#tally:->(7000 negated))->'Income taxes due. PAY $7,000'.

(#tally:->1000)->'Marketing Co-op holds out for higher price. Processor gives in. COLLECT $1,000'.

(#customHire:->2000)->'Custom hire out with your Harvester. 
COLLECT $2,000 from each player who has none.'.

(#calfWeights:->nil)->'Sharp management, production testing and your computer record system cause your calf weaning weights to soar. 
RECEIVE a 50% bonus in your Livestock Harvest check each of the next two years.'.
	}.! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:04'!
fullWorld
	FullWorld isNil ifTrue: [self fullWorld: false].
	^FullWorld! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:03'!
fullWorld: aBoolean
	"LaserGame fullWorld: false"
	FullWorld := aBoolean
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2014 16:55'!
goal
	"Answer the winning net asset goal"
	| normal |
	normal := 250000.
	Game testMode
		ifTrue: [^ normal * 10]
		ifFalse: [^ normal]	"Answer the winning net asset goal"
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:52'!
howTo
	^'Copy the following into a Workspace:
	
FarmingGame
	fullWorld: false;
	new
		
Select and execute it.' translated
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:03'!
launchFullWorld
	"LaserGame launchFullWorld"
	| morph |
	self fullWorld: true.
	morph := self new.
	morph openInWorld.
	^morph! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:02'!
launchStandard
	"LaserGame launchStandard"
	| morph |
	self fullWorld: false.
	morph := self new.
	morph openInHand! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 09:09'!
optionsDesc
	"Answer the name of each option at the frequency they appear in the deck"
	^ OrderedCollection new 
		 add: 'Tractor' withOccurrences: 3;
		 add: 'Harvester' withOccurrences: 3;
		 add: 'Fruit' withOccurrences: 6;
		 add: 'Grain' withOccurrences: 5;
		 add: 'Hay' withOccurrences: 5;
		 add: 'Livestock' withOccurrences: 6;
		 add: 'Ahtanum' withOccurrences: 3;
		 add: 'Rattlesnake' withOccurrences: 3;
		 add: 'Cascade' withOccurrences: 3;
		 add: 'Toppenish' withOccurrences: 3;
		 yourself ! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:09'!
prepareApplication
	"LaserGame prepareApplication"
	(self confirm: self prepareApplicationWarningMessage) ifTrue: [
		(SelectionMenu confirm: self closeAllOpenWindowsMessage) ifFalse: [^ self].
		self closeAllWindows.
		self launchFullWorld.
		self disableFeatures.
		self addApplication.
		SmalltalkImage current saveAs.
		]
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 22:06'!
prepareApplicationWarningMessage
	^'Really make a stand-alone image?
	Any existing Laser Game morphs should be closed.
A new one will be re-created by this process.
Important developer tools will be disabled.
The image should be saved as a new name as the final step of this process.' translated
! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 21:10'!
purgeAndAnswerSoleInstance
	"LaserGame purgeAndAnswerSoleInstance"
	| coll result |
	coll := self allInstances.
	coll size > 1 ifTrue: [2 to: coll size do: [:index |
			| morph |
			morph := coll at: index.
			morph delete]].
	result := coll isEmpty
		ifTrue: [nil]
		ifFalse: [coll first].
	^result! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 11/30/2014 14:55'!
season
	"Answer a collection of Seasons in order of their starting board positions."
	^ OrderedCollection new
		add: (FarmSeason new
			desc: 'WINTER';
			enabled: true;
			color: Color black; range: 1 @ 19; textColor: true);
		addLast: (FarmSeason new
			desc: '1ST HAY CUTTING';
			assetName: 'Hay';
			enabled: true;
			color: Color green; range: 20 @ 23);
		addLast: (FarmSeason new
			desc: 'CHERRY HARVEST';
			assetName: 'Cherries';
			enabled: true;
			color: Color red; range: 24 @ 26);
		addLast: (FarmSeason new
			desc: '2ND HAY CUTTING';
			assetName: 'Hay';
			enabled: true;
			color: Color green; range: 27 @ 29);
		addLast: (FarmSeason new
			desc: 'WHEAT HARVEST';
			assetName: 'Wheat';
			enabled: true;
			color: Color yellow; range: 30 @ 34);
		addLast: (FarmSeason new
			desc: '3RD HAY CUTTING';
			assetName: 'Hay';
			enabled: true;
			color: Color green; range: 35 @ 36);
		addLast: (FarmSeason new
			desc: 'LIVESTOCK SALES';
			assetName: 'Livestock';
			enabled: true;
			color: Color brown; range: 37 @ 40; textColor: true);
		addLast: (FarmSeason new
			desc: '4TH HAY CUTTING';
			assetName: 'Hay';
			enabled: true;
			color: Color green; range: 41 @ 42);
		addLast: (FarmSeason new
			desc: 'APPLE HARVEST';
			assetName: 'Apples';
			enabled: true;
			color: Color red; range: 43 @ 46);
		addLast: (FarmSeason new
			desc: 'CORN HARVEST';
			assetName: 'Corn';
			enabled: true;
			color: Color yellow; range: 47 @ 49);
		yourself! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 1/19/2012 15:43'!
startUp
	| soleInstance |
	soleInstance := self purgeAndAnswerSoleInstance.
	soleInstance isNil ifTrue: [soleInstance := self launchFullWorld].
	soleInstance newGame.
	! !


OptionsList subclass: #OptionsListFarm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!

!OptionsListFarm methodsFor: 'as yet unclassified' stamp: 'dhn 5/5/2012 20:35'!
initialize
	super initialize! !

!OptionsListFarm methodsFor: 'as yet unclassified' stamp: 'dhn 11/30/2014 12:40'!
listWindowLabelled: aString for: aName proportion: aWidth
	"create a window with a list pane aWidth wide, a button pane, and one text pane"
	| xw pm panel |
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
					addMorph: (panel := self buttonsPanel)
						frame: (aWidth @ 0 extent: (1 - aWidth) @ 0.15);
					addMorph: (pm := PasteUpMorph new
						layoutPolicy: TableLayout new;
						layoutInset: 6@6;
						color: Color white)
						frame: (aWidth @ 0.15 extent: (1 - aWidth) @ 0.85)).
				pm addMorph: (textMorph := TextMorph new
					layoutPolicy: ProportionalLayout new;
					wrapFlag: true;
					hResizing: #spaceFill;
					vResizing: #spaceFill;
					contents: ' ').
				panel addAllMorphs: (self optionsButtons).
				textMorph extension locked: true.
				xw extension externalName: aName]
			ifNotNil: [xw comeToFront].
	^ xw
! !

!OptionsListFarm methodsFor: 'as yet unclassified' stamp: 'dhn 11/16/2014 20:34'!
reviewOption
	"Exercise an option."
	| option message argument result |
	option := player options at: selectedItem.
	player mgr deleteWindow: 'Options'.
	message := (option asLowercase, ':') asSymbol.
	argument := Compiler evaluate: option, ' optionCost'.
	result := (Message new setSelector: message arguments: (Array with: argument)) sentTo: player mgr.
	player drawnOption
		ifTrue: [player removeOptionAt: option.
			player mgr exercisedOptions addLast: option.
			player drawnOption: false.
			"statWindow
				ifNotNil: [self statWindow setSelection: self statWindow currentSelection]"
			]! !

!OptionsListFarm methodsFor: 'as yet unclassified' stamp: 'dhn 11/24/2014 10:56'!
setSelection: anInteger 
	"Cause the description for an option to be displayed"
	selectedItem := anInteger.
	anInteger ~= 0
		ifTrue: [text1 := self player optionDescription: (collection at: selectedItem).
			(self player mgr seasonAt: self player position) desc = 'WINTER'
				ifTrue: [self player mgr won
						ifFalse: [exerciseButton enableButton]]]
		ifFalse: [exerciseButton ifNotNil: [exerciseButton disableButton].
			text1 := ''].
	textMorph contents: text1.
	self changed: #currentSelection;
		 changed: #text1 ! !

!OptionsListFarm methodsFor: 'as yet unclassified' stamp: 'dhn 11/26/2014 20:23'!
updateOptionsIn: aWindow
	"Bring window showing the current player's options up to date"
	self collection: player options;
		setSelection: 0;
		changed: #list
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

OptionsListFarm class
	instanceVariableNames: ''!

!OptionsListFarm class methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 12:51'!
windowName
	"Answer the name for windows on this class"
	^ 'Options'! !


StatList subclass: #StatListFarm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!

!StatListFarm methodsFor: 'as yet unclassified' stamp: 'dhn 11/30/2014 20:18'!
reportFor: aPlayer on: anAsset
	| p asset str col |
	p := aPlayer assets at: anAsset ifAbsent: [^ 'No such asset named ', anAsset].
	asset := self class translate: anAsset.
	col := (aPlayer harvests) select: [:ea | ea assetName = asset].
	str := String new writeStream.
	str nextPutAll: p description,':'; cr;
		nextPutAll: (p reportAsAssetFor: aPlayer); cr.
	col ifNotEmpty: [col do: [:ea | 
		ea enabled ifFalse: [str nextPutAll: ea desc, ' - done.'; cr]]].
	^ str contents! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

StatListFarm class
	instanceVariableNames: ''!

!StatListFarm class methodsFor: 'as yet unclassified' stamp: 'dhn 11/30/2014 20:11'!
translate: aName
	"Answer a name suited for harvest reporting translated from aName"
	| match |
	match := #('CattleOnFarm'. 'Ahtanum'. 'Rattlesnake'. 'Cascade'. 'Toppenish') 
		detect: [:a | a = aName] ifNone: [^ aName].
	^ 'Livestock'
! !
