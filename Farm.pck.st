'From Cuis 5.0 of 7 November 2016 [latest update: #3717] on 3 May 2019 at 8:31:55 pm'!
'Description Please enter a description for this package'!
!provides: 'Farm' 1 72!
!requires: 'Game' 1 27 nil!
SystemOrganization addCategory: #'Farm-Model'!
SystemOrganization addCategory: #'Farm-Graphics'!


!classDefinition: #Farm category: #'Farm-Model'!
Game subclass: #Farm
	instanceVariableNames: 'availableOptions exercisedOptions optionDrawn fates drawnFates expenses drawnExpenses leases plotWindow moveButton latestPlayer windowCount assetAuctionItem auctionList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Farm class' category: #'Farm-Model'!
Farm class
	instanceVariableNames: ''!

!classDefinition: #FarmToken category: #'Farm-Graphics'!
Token subclass: #FarmToken
	instanceVariableNames: 'doubled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmToken class' category: #'Farm-Graphics'!
FarmToken class
	instanceVariableNames: ''!

!classDefinition: #FarmButton category: #'Farm-Graphics'!
GameButtonMorph subclass: #FarmButton
	instanceVariableNames: 'deferred'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmButton class' category: #'Farm-Graphics'!
FarmButton class
	instanceVariableNames: ''!

!classDefinition: #FarmingGame category: #'Farm-Graphics'!
GameBoard subclass: #FarmingGame
	instanceVariableNames: 'seasons numbersArea othersArea seasonsArea'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmingGame class' category: #'Farm-Graphics'!
FarmingGame class
	instanceVariableNames: ''!

!classDefinition: #SellAsset category: #'Farm-Graphics'!
AuctionAsset subclass: #SellAsset
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'SellAsset class' category: #'Farm-Graphics'!
SellAsset class
	instanceVariableNames: ''!

!classDefinition: #FarmingView category: #'Farm-Graphics'!
SystemWindow subclass: #FarmingView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmingView class' category: #'Farm-Graphics'!
FarmingView class
	instanceVariableNames: ''!

!classDefinition: #AllView category: #'Farm-Graphics'!
FarmingView subclass: #AllView
	instanceVariableNames: 'textPane buttonArea ackButton player'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'AllView class' category: #'Farm-Graphics'!
AllView class
	instanceVariableNames: ''!

!classDefinition: #AssetView category: #'Farm-Graphics'!
FarmingView subclass: #AssetView
	instanceVariableNames: 'textPane buttonArea player list assetItem assetReport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'AssetView class' category: #'Farm-Graphics'!
AssetView class
	instanceVariableNames: ''!

!classDefinition: #DrawView category: #'Farm-Graphics'!
FarmingView subclass: #DrawView
	instanceVariableNames: 'textPane buttonArea ackButton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'DrawView class' category: #'Farm-Graphics'!
DrawView class
	instanceVariableNames: ''!

!classDefinition: #OptionsView category: #'Farm-Graphics'!
FarmingView subclass: #OptionsView
	instanceVariableNames: 'textPane cancelButton buyButton buttonArea player list optionsItem optionsReport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'OptionsView class' category: #'Farm-Graphics'!
OptionsView class
	instanceVariableNames: ''!

!classDefinition: #YouView category: #'Farm-Graphics'!
FarmingView subclass: #YouView
	instanceVariableNames: 'textPane buttonArea ackButton player'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'YouView class' category: #'Farm-Graphics'!
YouView class
	instanceVariableNames: ''!

!classDefinition: #FarmAsset category: #'Farm-Model'!
Asset subclass: #FarmAsset
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'FarmAsset class' category: #'Farm-Model'!
FarmAsset class
	instanceVariableNames: ''!

!classDefinition: #Crop category: #'Farm-Model'!
FarmAsset subclass: #Crop
	instanceVariableNames: 'rate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Crop class' category: #'Farm-Model'!
Crop class
	instanceVariableNames: ''!

!classDefinition: #Fruit category: #'Farm-Model'!
Crop subclass: #Fruit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Fruit class' category: #'Farm-Model'!
Fruit class
	instanceVariableNames: ''!

!classDefinition: #Apples category: #'Farm-Model'!
Fruit subclass: #Apples
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Apples class' category: #'Farm-Model'!
Apples class
	instanceVariableNames: ''!

!classDefinition: #Cherries category: #'Farm-Model'!
Fruit subclass: #Cherries
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Cherries class' category: #'Farm-Model'!
Cherries class
	instanceVariableNames: ''!

!classDefinition: #Grain category: #'Farm-Model'!
Crop subclass: #Grain
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Grain class' category: #'Farm-Model'!
Grain class
	instanceVariableNames: ''!

!classDefinition: #Corn category: #'Farm-Model'!
Grain subclass: #Corn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Corn class' category: #'Farm-Model'!
Corn class
	instanceVariableNames: ''!

!classDefinition: #Wheat category: #'Farm-Model'!
Grain subclass: #Wheat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Wheat class' category: #'Farm-Model'!
Wheat class
	instanceVariableNames: ''!

!classDefinition: #Hay category: #'Farm-Model'!
Crop subclass: #Hay
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Hay class' category: #'Farm-Model'!
Hay class
	instanceVariableNames: ''!

!classDefinition: #Equipment category: #'Farm-Model'!
FarmAsset subclass: #Equipment
	instanceVariableNames: 'costAvoided'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Equipment class' category: #'Farm-Model'!
Equipment class
	instanceVariableNames: ''!

!classDefinition: #Harvester category: #'Farm-Model'!
Equipment subclass: #Harvester
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Harvester class' category: #'Farm-Model'!
Harvester class
	instanceVariableNames: ''!

!classDefinition: #Tractor category: #'Farm-Model'!
Equipment subclass: #Tractor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Tractor class' category: #'Farm-Model'!
Tractor class
	instanceVariableNames: ''!

!classDefinition: #Livestock category: #'Farm-Model'!
FarmAsset subclass: #Livestock
	instanceVariableNames: 'yearCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Livestock class' category: #'Farm-Model'!
Livestock class
	instanceVariableNames: ''!

!classDefinition: #CattleOnFarm category: #'Farm-Model'!
Livestock subclass: #CattleOnFarm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'CattleOnFarm class' category: #'Farm-Model'!
CattleOnFarm class
	instanceVariableNames: ''!

!classDefinition: #CattleOnLease category: #'Farm-Model'!
Livestock subclass: #CattleOnLease
	instanceVariableNames: 'where'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'CattleOnLease class' category: #'Farm-Model'!
CattleOnLease class
	instanceVariableNames: ''!

!classDefinition: #Ahtanum category: #'Farm-Model'!
CattleOnLease subclass: #Ahtanum
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Ahtanum class' category: #'Farm-Model'!
Ahtanum class
	instanceVariableNames: ''!

!classDefinition: #Cascade category: #'Farm-Model'!
CattleOnLease subclass: #Cascade
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Cascade class' category: #'Farm-Model'!
Cascade class
	instanceVariableNames: ''!

!classDefinition: #Rattlesnake category: #'Farm-Model'!
CattleOnLease subclass: #Rattlesnake
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Rattlesnake class' category: #'Farm-Model'!
Rattlesnake class
	instanceVariableNames: ''!

!classDefinition: #Toppenish category: #'Farm-Model'!
CattleOnLease subclass: #Toppenish
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Toppenish class' category: #'Farm-Model'!
Toppenish class
	instanceVariableNames: ''!

!classDefinition: #Farmer category: #'Farm-Model'!
Gamer subclass: #Farmer
	instanceVariableNames: 'offFarm options priorOptions garnish emergencies harvests markets spaceEffect harvesting'
	classVariableNames: 'FarmerTest'
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Farmer class' category: #'Farm-Model'!
Farmer class
	instanceVariableNames: ''!

!classDefinition: #FarmSeason category: #'Farm-Model'!
Season subclass: #FarmSeason
	instanceVariableNames: 'enabled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'FarmSeason class' category: #'Farm-Model'!
FarmSeason class
	instanceVariableNames: ''!

!classDefinition: #Field category: #'Farm-Model'!
Object subclass: #Field
	instanceVariableNames: 'heading description label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'Field class' category: #'Farm-Model'!
Field class
	instanceVariableNames: ''!


!Farm commentStamp: '<historical>' prior: 0!
The model for FarmingGame!

!FarmToken commentStamp: '<historical>' prior: 0!
The game piece for a farmer - a player in the Farming Game.!

!FarmButton commentStamp: '<historical>' prior: 0!
A button which can have its action selector changed.!

!FarmingGame commentStamp: 'dhn 4/7/2019 18:31:44' prior: 0!
Manage the visual effects of the Farming Game.

Start the game from the New morph... window or in a workspace do:

FarmingGame start.

http://farmgame.com/product/woo-single-2/

!

!SellAsset commentStamp: '<historical>' prior: 0!
A window which makes it possible for farmers to raise cash by selling assets.!

!FarmingView commentStamp: '<historical>' prior: 0!
Abstract class for FarmingGame views!

!AllView commentStamp: '<historical>' prior: 0!
A FarmingGame view which shows a report on all players.!

!AssetView commentStamp: '<historical>' prior: 0!
A FarmingGame view which shows the status of a player's assets.!

!DrawView commentStamp: '<historical>' prior: 0!
A FarmingGame view which shows the option which was drawn.!

!OptionsView commentStamp: 'dhn 8/26/2016 16:48:51' prior: 0!
A FarmingGame view which makes it possible for farmers to exercise options.!

!YouView commentStamp: '<historical>' prior: 0!
A FarmingGame view which shows the current player's status.!

!FarmAsset commentStamp: '<historical>' prior: 0!
The model for an asset of the farm.!

!Crop commentStamp: '<historical>' prior: 0!
The model for a crop asset.!

!Fruit commentStamp: '<historical>' prior: 0!
The model for fruit.!

!Apples commentStamp: '<historical>' prior: 0!
The model for apple fruit.!

!Cherries commentStamp: '<historical>' prior: 0!
The model for cherry fruit.!

!Grain commentStamp: '<historical>' prior: 0!
The model for grain.!

!Corn commentStamp: '<historical>' prior: 0!
The model for corn grain.!

!Wheat commentStamp: '<historical>' prior: 0!
The model for wheat grain.!

!Hay commentStamp: '<historical>' prior: 0!
The model for hay.!

!Equipment commentStamp: '<historical>' prior: 0!
The model for farm equipment.!

!Harvester commentStamp: '<historical>' prior: 0!
The model for a harvester.!

!Tractor commentStamp: '<historical>' prior: 0!
The model for a tractor.!

!Livestock commentStamp: '<historical>' prior: 0!
The model for livestock.!

!CattleOnFarm commentStamp: '<historical>' prior: 0!
The model for cattle on farm.!

!CattleOnLease commentStamp: '<historical>' prior: 0!
The model for cattle on lease.!

!Ahtanum commentStamp: '<historical>' prior: 0!
The model for the Ahtanum Ridge lease.!

!Cascade commentStamp: '<historical>' prior: 0!
The model for the Cascade Ridge lease.!

!Rattlesnake commentStamp: '<historical>' prior: 0!
The model for the Rattlesnake Ridge lease.!

!Toppenish commentStamp: '<historical>' prior: 0!
The model for the Toppenish Ridge lease.!

!Farmer commentStamp: '<historical>' prior: 0!
A player in the Farming Game.
!

!FarmSeason commentStamp: '<historical>' prior: 0!
The model for a season of the year on the farm.!

!Field commentStamp: '<historical>' prior: 0!
A JobSite describes the attributes of a space on the game board!

!Farm methodsFor: 'initialize-release' stamp: 'dhn 10/27/2014 20:26'!
addTestPlayer: aString
	"Add a test player."
	|pl|
	pl := Farmer test: aString; new.
	self players: pl.
	pl mgr: self.
	2 timesRepeat: [pl options addFirst: (self drawOptionQuietly: true).].
! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/25/2017 11:58:06'!
initialize

	super initialize.
	cellCount _ self class cellsForGame.
	spaces _ self setUpSpaces.
	availableOptions _ self class optionsNames shuffled.
	exercisedOptions _ OrderedCollection new.
	fates _ self class fatesDesc asOrderedCollection shuffled.
	drawnFates _ OrderedCollection new.
	expenses _ self class expenseDesc asOrderedCollection shuffled.
	drawnExpenses _ OrderedCollection new.
	leases _ self setUpLeases.
	windowCount _ 0.
	won _ false
! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/5/2017 21:26:16'!
setTestMode
	"Optionally toggle test mode"
	| trans ans |
	
	trans _ self testMode
		ifTrue: ['true to false']
		ifFalse: ['false to true'].
	ans _ nil confirm: 'Change Test Mode (', trans, ')'.
	ans ifTrue: [
		self testMode: self testMode not.
		self testMode ifTrue: [goal _ self testGoal]]! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/9/2017 19:41:53'!
setUpLeases
	"Answer the leases as unowned."
	^ Dictionary new 
		add: 'Ahtanum' -> nil;
		add: 'Rattlesnake' -> nil;
		add: 'Cascade' -> nil;
		add: 'Toppenish' -> nil;
		 yourself ! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 8/31/2017 11:47:43'!
setUpSpaces
	"Initialize the board spaces"
	| col |
	
	col _ OrderedCollection new.
	1 to: self class describeSpaces size do: [:ix |
		col add: (BoardSpace new
			label: (self class describeSpaces at: ix);
			routine: ('space', ix asString) asSymbol)].
	^ col! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 4/12/2019 11:10:04'!
setUpToken
	"Answer a token, used throughout the game, for the current player."
	| tok |
	
	tok _ FarmToken newFor: self.
	tok openInWorld: world.
	tok morphExtent: world morphExtent * (0.090@0.080).
	tok morphPosition: tok posAdjust.
	tokenPos _ tok morphPosition.
	tok delete. 	"make it disappear; not needed until next player"
	^ tok! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/14/2017 13:22:36'!
setupPlayer: aName color: aColor
	"Establish a player named aName and colored aColor"
	| pl |
	
	self players add: (pl _ Farmer new
		color: aColor;
		marker: (EllipseMorph new
			setBalloonText: 'marker for ', aName;
			color: aColor;
			morphExtent: 18@10);
		mgr: self;
		identity: aName).
	2 timesRepeat: [pl options addFirst: (self drawOptionQuietly: true)].
	pl priorOptions: pl options copy.
	currentPlayer _ pl
	
! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 8/31/2017 13:00:50'!
testGoal
	"Answer the value of TestGoal"
	| g x |
	
	TestMode ifTrue: [
		TestGoal 
			ifNil: [g _ goal asString]
			ifNotNil: [g _ TestGoal asString].
		x _ (FillInTheBlankMorph request: 'Test Goal?' initialAnswer: g).
		x ~= '' 
			ifTrue:  [self testGoal: x asNumber]
			ifFalse: [self testGoal: self goal].
		^ TestGoal]! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 8/31/2017 13:01:27'!
testGoal: anObject
	"Set the value of TestGoal"
	
	TestGoal _ anObject! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 8/30/2017 19:47:18'!
testMode
	"Answer the value of testMode"
	
	TestMode ifNil: [TestMode _ false].
	^ TestMode! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/5/2017 21:24:27'!
testMode: aBool
	"Set the value of testMode"
	
	TestMode _ aBool! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 20:27'!
ahtanum: quantity
	"Lease Ahtanum Ridge for $quantity."
	self lease: 'Ahtanum' for: quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 20:28'!
cascade: quantity 
	"Lease Cascade Ridge for $quantity."
	self lease: 'Cascade' for: quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 4/22/2019 13:27:46'!
drawOptionQuietly: aBoolean 
	"Answer an option, drawn from those available if possible; however,
	 resupply first from exercised options, if any; failing that,
	resupply from a new 'deck' of options."
	| otb |
	
	self availableOptions isEmpty
		ifTrue: [exercisedOptions isEmpty
			ifTrue: [availableOptions _ self class optionsNames shuffled]
			ifFalse: [
				availableOptions _ exercisedOptions shuffled.
				exercisedOptions _ OrderedCollection new]].
	otb _ availableOptions removeFirst.
	aBoolean ifFalse: [
		self optionDrawn: true.
		self triggerEvent: #showDraw with: (Compiler evaluate: otb , ' optionText')].
	^ otb! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 13:15:03'!
fruit: quantity
	"Answer the purchased number of acres of fruit; split the cost." 
	| total down balance |
	
	total _ quantity * Fruit price.
	down _ 0.2 * total.
	balance _ total - down.
	self
		pay: down / 2
		borrow: balance / 2
		for: #Cherries
		amount: Cherries auctionQuantity.
	self
		pay: down / 2
		borrow: balance / 2
		for: #Apples
		amount: Apples auctionQuantity.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 13:15:15'!
grain: quantity 
	"Answer the purchased number of acres of grain; split the cost." 
	| total down balance |
	
	total _ quantity * Grain price.
	down _ 0.2 * total.
	balance _ total - down.
	self
		pay: down / 2
		borrow: balance / 2
		for: #Wheat
		amount: Wheat auctionQuantity.
	self
		pay: down / 2
		borrow: balance / 2
		for: #Corn
		amount: Corn auctionQuantity.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 13:15:26'!
harvester: quantity 
	"Answer the purchased number of harvesters; account for the cost." 
	| total down balance |
	
	total _ quantity * Harvester price.
	down _ 0.2 * total.
	balance _ total - down.
	self
		pay: down
		borrow: balance
		for: #Harvester
		amount: Harvester auctionQuantity.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 13:15:34'!
hay: quantity 
	"Answer the purchased number of acres of hay; account for the cost." 
	| total down balance |
	
	total _ quantity * Hay price.
	down _ 0.2 * total.
	balance _ total - down.
	self
		pay: down
		borrow: balance
		for: #Hay
		amount: Hay auctionQuantity.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 14:37:52'!
lease: aName for: quantity 
	"Answer the purchased number of cattle on aName lease; account for the cost." 
	| total down balance who |
	
	who _ leases at: aName.
	who isNil
		ifTrue: [
			total _ quantity * CattleOnLease price.
			down _ 0.2 * total.
			balance _ total - down.
			self
				pay: down
				borrow: balance
				for: aName asSymbol
				amount: (Compiler evaluate: aName , ' auctionQuantity').
			leases at: aName put: currentPlayer identity]
		ifFalse: [GamePopUp inform: 'Sorry, but the ' , aName , ' lease is held by ' , who title: 'Lease Taken'].
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 13:16:14'!
livestock: quantity 
	"Answer the purchased number of cattle for the farm; account for the cost." 
	| total down balance |
	
	total _ quantity * CattleOnFarm price.
	down _ 0.2 * total.
	balance _ total - down.
	self
		pay: down
		borrow: balance
		for: #CattleOnFarm
		amount: CattleOnFarm auctionQuantity.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 21:40'!
pay: down borrow: balance for: aSymbol amount: qty
	"Account for the down payment and loan balance to purchase the asset named in aSymbol." 
	| asset |
	currentPlayer debt: balance negated + currentPlayer debt.
	currentPlayer tally: down negated.
	asset := currentPlayer assets at: aSymbol.
	asset quantity: qty + asset quantity.
	asset cost: down + balance + asset cost.
	self updatePlayer! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 21:47'!
rattlesnake: quantity 
	"Lease Rattlesnake Ridge for $quantity."
	self lease: 'Rattlesnake' for: quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 22:06'!
toppenish: quantity 
	"Lease Toppenish Ridge for $quantity."
	self lease: 'Toppenish' for: quantity
! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/14/2017 13:16:25'!
tractor: quantity 
	"Answer the purchased number of tractors; account for the cost." 
	| total down balance |
	
	total _ quantity * Tractor price.
	down _ 0.2 * total.
	balance _ total - down.
	self
		pay: down
		borrow: balance
		for: #Tractor
		amount: Tractor auctionQuantity.
	^ quantity! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 17:58:22'!
availableOptions
	"Answer the value of availableOptions"

	availableOptions ifNil: [availableOptions := OrderedCollection new].
	^ availableOptions! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 17:58:44'!
availableOptions: anObject
	"Set the value of availableOptions"

	availableOptions := anObject! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 18:01:09'!
exercisedOptions
	"Answer the value of exercisedOptions"

	exercisedOptions isNil ifTrue: [exercisedOptions := OrderedCollection new].
	^ exercisedOptions! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 18:01:26'!
exercisedOptions: anObject
	"Set the value of exercisedOptions"

	exercisedOptions := anObject! !

!Farm methodsFor: 'buttons' stamp: 'dhn 9/5/2017 14:38:57'!
buttonsNamed: aCollection
	"Answer the buttons whose labels match those in aCollection"
	| ans btn |
	
	ans _ OrderedCollection new.
	aCollection do: [:x |
		btn _ self buttons submorphs detect: [:b | b label = x] ifNone: [nil].
		btn ifNotNil: [ans add: btn; yourself]].
	^ ans! !

!Farm methodsFor: 'buttons' stamp: 'dhn 9/5/2017 12:29:59'!
disableAll: aCollection
	"Disable each button in aCollection"
	
	(self buttonsNamed: aCollection) do: [:ea | ea disableButton]! !

!Farm methodsFor: 'buttons' stamp: 'dhn 10/9/2017 17:27:11'!
disabledAll: aCollection
	"Answer true if all buttons in aCollection are disabled"
	| ans |

	ans _ true.
	(self buttonsNamed: aCollection) do: [:ea | ans _ ans and: ea enabled not].
	^ ans! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 5/1/2019 11:55:44'!
doAuction
	"Display the Auction button menu."
	| ans |
	
	ans _ (SelectionMenu fromArray:
	#(	('Sell Your Assets'	            showAssetAuction)
		('Sell Your Options'	            showAuctionOptions)
		)) startUpWithCaption: 'Start an Auction'.
		
	ans ifNotNil: [self triggerEvent: ans]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 9/5/2017 21:19:23'!
doSettings
	"Provide a facility for changing settings"
	| ans |
	
	ans _ (PopUpMenu withCaption: 'Settings' chooseFrom: 'Change the goal of the game\Change test mode').
	ans > 0 ifTrue: [self perform: (#(#setGoal #setTestMode) at: ans)]
! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/29/2018 09:17:54'!
doStats
	"Display the Stats button menu."
	| ans |
	
	ans _ (SelectionMenu fromArray:
	#(	('Your Assets'	            showAssets)
		('Yourself'	                  showYourself)
		('All Players'                  showEverybody)
		-
		('Progress Graph'          showHistory)
		('Space Histogram'        showSpaceHistogram)
		)) startUpWithCaption: '  Statistics  '.
		
	ans ifNotNil: [self triggerEvent: ans]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/31/2017 17:16:55'!
endTurn
	"End a player's turn"
	
	(spaces atWrap: currentPlayer position) markAddFor: currentPlayer.
"	self addMarkerIDInMarks; removeAllMarkersInCells."
	self enableAll: {'Auction'}.
	currentPlayer cash < 0
		ifTrue: [self disableAll: {'Move'}.
			currentPlayer outOfAssets
				ifTrue: [self removeFromGame]
				ifFalse: [
					self declareBroke: currentPlayer identity.
					self disableAll: {'End Turn'}]]
		ifFalse: [
			currentPlayer debt < currentPlayer playerDebtLimit value
				ifTrue: [
					self declareOver: currentPlayer identity.
					self disableAll: {'End Turn'}]
				ifFalse: [currentPlayer netAssets >= self goal
						ifTrue: [won
								ifFalse: [self declareWinner]].
					self disableAll: {'Harvest'}.
					self triggerEvent: #deleteOpenWindows.
					windowCount _ 0.
					self nextPlayer.
					self won
						ifTrue: [self wonButtonsState]
						ifFalse: [self enableAll: {'Move'. 'Stats'}.
							self disableAll: {'End Turn'}]]]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/2/2014 21:33'!
initialButtonState
	"Establish the button state at the start of the game"
	self enableAll: {'Option'}.
	self disableAll: {'End Turn'. 'Expense'. 'Fate'. 'Harvest'}! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 21:44'!
plotWindow
	"Answer the value of plotWindow."
	^ plotWindow! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 21:44'!
plotWindow: anObject
	"Set the value of plotWindow."
	plotWindow := anObject! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/9/2017 17:51:58'!
queryWin: aBool
	"Change state of buttons according to whether a win has occurred."
		aBool ifTrue: [self wonButtonsState]
		ifFalse: [self endTurnCheck]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 4/12/2019 11:01:25'!
removeFromGame
	"Remove the current player from the game."
	| old |
	GamePopUp inform:  currentPlayer identity , ' has exceeded the $50,000 debt 
limit and is out of the game'
	title: 'YER OUT!!'.
	leases
		keysAndValuesDo: [:aKey :aValue | aValue =  currentPlayer identity
				ifTrue: [leases at: aKey put: nil]].
	old := self outs.
	old addFirst:  currentPlayer.
	self outs: old.
	(players includes: currentPlayer)
		ifTrue: [players removeAll: {currentPlayer}.
			playerIndex _ playerIndex - 1.
			self 
				nextPlayer; 
				triggerEvent: #prepareToken: with: currentPlayer;
				enableAll: {'Move'}].
"	players
		do: [:each | (arena submorphs
				detect: [:s | s externalName = each identity]) delete].
	token delete.
	self removeMarkerIDInMarks."
	1 = players size
		ifTrue: [GamePopUp inform: self players first identity , ' has won the game by default.' title: 'WE HAVE A WINNER!!'.
			self disableAll: {'Pay Loan'. 'End Turn'. 'Option'. 'Expense'. 'Fate'. 'Harvest'. 'Move'}.
			self won: true]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/30/2017 18:31:59'!
seasonAt: aPosition
	"Answer the season at aPosition."
	| y |
	
	y _ self class season select: [:a | a range x <= aPosition].
	^ y last ! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 9/3/2017 12:25:39'!
updatePlayer
	"Make the screen show the latest numbers."
	
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 22:10'!
wonButtonsState
	"Set the state of the buttons after a winner is identified."
	self disableAll: {'Pay Loan'. 'Expense'. 'Fate'. 'Harvest'. 'Move'}.
	self enableAll: {'End Turn'}.
! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/20/2017 13:19:24'!
franchiseEffect: aRoll
	"Account for a harvest of aRoll quality"
	| asset income |

	asset _ currentPlayer harvesting.
	income _ (Smalltalk classNamed: asset) income: aRoll from: asset for: currentPlayer.
	currentPlayer 
		tally: income;
		harvested.
	self triggerEvent: #itemChange.
! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 4/18/2019 12:25:34'!
harvest
	"Harvest and account for the result."

	currentPlayer harvest: (self class harvestSeason at: currentPlayer position).
	self disableAll: {'Harvest'}.
	self triggerEvent: #clicked! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 4/18/2019 15:31:29'!
payExpense
	"Account for an expense."
	| assoc expense value class |
	
	assoc _ self drawExpense.
	expense _ assoc key value.
	GamePopUp inform: assoc value title: 'Expense'.
	value _ currentPlayer perform: assoc key key with: expense.
	currentPlayer expenseCount: 1 +  currentPlayer expenseCount.
	class _ Smalltalk classNamed: (self class harvestSeason at: currentPlayer position).
	class ifNotNil: [class perform: #expense:for: withArguments: (Array with: value with: currentPlayer)].
	self triggerEvent: #itemChange.
	self disableAll: {'Expense'}.
	self triggerEvent: #clicked! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 4/18/2019 21:47:03'!
toNov3: aSymbol
	"Possibly move the player to November Week 3."
	
	currentPlayer ifTractor
		ifTrue: [
			GamePopUp inform: 'You will advance to 3rd week in November.' title: '3rd week in November'.
			token slideRight: currentPlayer position to: (Farm specialSpaces at: aSymbol)]
		ifFalse: [self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'expense' stamp: 'dhn 10/27/2014 21:05'!
drawExpense
	"Answer an expense card and place it in the discard pile."
	^ self drawCard: (self expenses) discard: (self drawnExpenses).
! !

!Farm methodsFor: 'expense' stamp: 'dhn 10/12/2011 21:54'!
drawnExpenses
	"Answer the value of drawnExpenses"

	^ drawnExpenses! !

!Farm methodsFor: 'expense' stamp: 'dhn 10/12/2011 21:57'!
expenses
	"Answer the value of expenses"

	^ expenses! !

!Farm methodsFor: 'fates' stamp: 'dhn 4/18/2019 12:23:37'!
drawFate
	"Draw a farmer's fate card, account for it, and place it in the discard pile."
	"Special case: inheritance from Uncle Bert"
	| assoc tale |
	
	assoc _ self drawCard: self fates discard: self drawnFates.
	self triggerEvent: #itemChange.
	self disableAll: {'Fate'}.
	assoc key key = #uncleBert:
		ifTrue: [
			tale _ String streamContents: [:str |
				str
					nextPutAll: assoc value; newLine;
					nextPutAll: 'Do you want to inherit?'].
			response _ PopUpMenu confirm: tale trueChoice: 'yes' falseChoice: 'no'.
			response
				ifTrue: [| h |
					currentPlayer tally: 10000 negated.
					h _ currentPlayer assets at: #Hay.
					"inherited hay comes cheaper"
					h cost: 10000 + h cost.
					h quantity: 10 + h quantity.
					self triggerEvent: #itemChange]]
		ifFalse: [
			GamePopUp inform: assoc value title: 'Farmer''s Fate'.
			currentPlayer perform: assoc key key withArguments: {assoc key value}].
	self triggerEvent: #itemChange.
	self triggerEvent: #clicked! !

!Farm methodsFor: 'fates' stamp: 'dhn 10/12/2011 21:54'!
drawnFates
	"Answer the value of drawnFates"

	^ drawnFates! !

!Farm methodsFor: 'fates' stamp: 'dhn 10/12/2011 21:58'!
fates
	"Answer the value of fates"

	^ fates! !

!Farm methodsFor: 'accessing' stamp: 'dhn 5/3/2019 19:57:20'!
assetAuctionList
	"Answer a list for the asset auction window"
	
	^ auctionList! !

!Farm methodsFor: 'accessing' stamp: 'dhn 4/10/2019 10:19:05'!
auctionList
	"Answer the value of auctionList"
	
	^ auctionList! !

!Farm methodsFor: 'accessing' stamp: 'dhn 4/10/2019 10:20:19'!
auctionList: anObject
	"Set the value of auctionList"
	
	auctionList _ anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
drawnExpenses: anObject
	"Set the value of drawnExpenses"

	drawnExpenses := anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
drawnFates: anObject
	"Set the value of drawnFates"

	drawnFates := anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
expenses: anObject
	"Set the value of expenses"

	expenses := anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
fates: anObject
	"Set the value of fates"

	fates := anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 9/7/2017 14:23:38'!
moveButton
	"Answer the value of moveButton"
	
	^ moveButton! !

!Farm methodsFor: 'accessing' stamp: 'dhn 8/31/2017 14:33:52'!
moveButton: anObject
	"Set the value of moveButton"
	
	^ moveButton _ anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 4/22/2019 13:24:25'!
optionDrawn
	"Answer the value of optionDrawn"
	
	optionDrawn ifNil: [optionDrawn _ false].
	^ optionDrawn! !

!Farm methodsFor: 'accessing' stamp: 'dhn 4/22/2019 13:25:05'!
optionDrawn: aBool
	"Set the value of optionDrawn"
	
	optionDrawn _ aBool! !

!Farm methodsFor: 'accessing' stamp: 'dhn 9/7/2017 12:07:33'!
windowPosition: aPoint
	"Answer a staggered position for a window"
	
	windowCount _ windowCount + 1.
	^ aPoint + (windowCount * (20@20))! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/18/2019 14:01:04'!
attemptHarvest
	"Try to enable the Harvest button"
	
	currentPlayer harvestEnabled
		ifTrue: [self enableAll: {'Harvest'. 'Expense'}]
		ifFalse: [self triggerEvent: #clicked]! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/22/2019 13:38:10'!
endTurnCheck
	"Enable the End Turn button if certain conditions are met"

	((self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) and: [self optionDrawn not])
		ifTrue: [self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/18/2019 11:49:26'!
leftTo: aSymbol
	"Slide to the position defined by aSymbol"
	
	token slideLeft: currentPlayer position to: (Farm specialSpaces at: aSymbol)! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/18/2019 11:49:57'!
rightTo: aSymbol
	"Slide to the position defined by aSymbol"
	
	token slideRight: currentPlayer position to: (Farm specialSpaces at: aSymbol)! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/17/2019 11:57:49'!
symbolFor: aNumber
	"Answer the symbol corresponding to aNumber in self class specialSpaces"
	
	^ self class specialSpaces keyAtValue: aNumber ifAbsent: [nil]! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/18/2019 16:11:33'!
toFeb4: aSymbol
	"Go to 4th week in February"
	
	GamePopUp inform: 'You will advance to 4th week in February.' title: 'Farming like a Pro'.
	token slideRight: currentPlayer position to: (Farm specialSpaces at: aSymbol).
	currentPlayer passedGo: true
! !

!Farm methodsFor: 'operating' stamp: 'dhn 4/18/2019 12:52:43'!
toMoon: aSymbol
	"Go to Harvest Moon"
	
	GamePopUp inform: 'You will advance to Harvest Moon.' title: 'Harvest Moon'.
	token slideRight: currentPlayer position to: (Farm specialSpaces at: aSymbol).! !

!Farm methodsFor: 'operating' stamp: 'dhn 8/31/2017 16:59:12'!
updateHistory
	"Change player's history"
	
	latestPlayer = playerIndex 
		ifTrue: [currentPlayer updateHistory]
		ifFalse: [
			latestPlayer _ playerIndex.
			currentPlayer appendHistory].
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'loan' stamp: 'dhn 9/1/2017 13:37:11'!
paymentChoices
	"Answer a collection of payment amounts for choosing."
	| list |
	list := OrderedCollection new.
	1000
		to: 50000 by: 1000
		do: [:n | 
			list addLast: '$' , n printStringWithCommas].
	^ list
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 16:27:52'!
space1
	"Christmas Vacation"
	
	self disableAll: {'Move'}.
	self triggerEvent: #itemChange.
	GamePopUp 
		inform: 'You will receive a bonus of $1,000 in addition
to your salary of $5,000.' 
		title: 'Christmas Bonus'.
	currentPlayer tally: 6000.
	currentPlayer offFarm: 6000 + self currentPlayer offFarm.
	currentPlayer reset.
	currentPlayer history add: currentPlayer netAssets.
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:51:19'!
space10
	"Mar week 1"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 2000 negated.
	( currentPlayer assets at: #Wheat)
		cost: 2000 + ( currentPlayer assets at: #Wheat) cost.
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:51:09'!
space11
	"Mar week 2"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500 negated.
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/17/2019 13:02:56'!
space12
	"Mar week 3"
	
	self disableAll: {'Move'}.
	GamePopUp inform: 'You will now go back to January Week 2.' title: 'January Week 2'.
	self triggerEvent: #itemChange.
	token slideLeft: currentPlayer position to: (Farm specialSpaces at: #jan2)! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:51:01'!
space13
	"Mar week 4"
	
	self disableAll: {'Move'}.
	currentPlayer ifFruit
		ifTrue: [
			currentPlayer tally: 2000 negated.
			self triggerEvent: #itemChange].
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:50:51'!
space14
	"Apr week 1"
	
	self disableAll: {'Move'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:50:39'!
space15
	"Spring Planting"
	
	self disableAll: {'Move'}.
	currentPlayer doubleCorn.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:50:27'!
space16
	"Apr week 3"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500 negated.
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:50:08'!
space17
	"Apr week 4"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 1000 negated.
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/22/2019 14:17:25'!
space18
	"May week 1"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500.
	self triggerEvent: #itemChange.
	self queryWin: self won.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:49:54'!
space19
	"May week 2"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500 negated.
	(currentPlayer assets at: #Corn)
		cost: 500 + (currentPlayer assets at: #Corn) cost.
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 12:17:12'!
space2
	"Jan week 1"
	
	self disableAll: {'Move'}.
	currentPlayer interest: 0.1.
	self triggerEvent: #itemChange.
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	self triggerEvent: #itemChange.
	self queryWin: won! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:32:27'!
space20
	"May week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 1000.
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/22/2019 18:01:04'!
space21
	"May week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:33:48'!
space22
	"Jun week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer halveHay.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:34:35'!
space23
	"Jun week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:35:49'!
space24
	"Jun week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer halveCherries: 0.5.
	currentPlayer ifFruit
		ifFalse: [| a |
			a _ currentPlayer assets at: #Cherries.
			a missed: a missed + 1].
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:37:07'!
space25
	"Jun week 4"

	self disableAll: {'Move'}.
	currentPlayer ifFruit
		ifFalse: [| a |
			a _ currentPlayer assets at: #Cherries.
			a missed: a missed + 1].
	self enableAll: {'Fate'}.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:37:35'!
space26
	"Independence Day"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer ifFruit
		ifFalse: [| a |
			a _ currentPlayer assets at: #Cherries.
			a missed: a missed + 1].
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:37:53'!
space27
	"Jul week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer doubleHay.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/22/2019 18:42:20'!
space28
	"Jul week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/19/2019 16:49:48'!
space29
	"Jul week 3"

	self disableAll: {'Move'. 'Fate'}.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 12:18:52'!
space3
	"Jan week 2"
	
	self disableAll: {'Move'}.
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	self triggerEvent: #itemChange.
	currentPlayer
		addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	self queryWin: won! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 12:59:41'!
space30
	"Jul week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer bumpWheat: 50.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:20:03'!
space31
	"Aug week 1"

	self disableAll: {'Move'. 'Fate'}.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:20:38'!
space32
	"Aug week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer hasHarvester
		ifTrue: [self triggerEvent: #itemChange].
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:21:23'!
space33
	"Aug week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	(currentPlayer assets at: #Wheat)
		gross: 500 + (currentPlayer assets at: #Wheat) gross.
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:45:24'!
space34
	"Aug week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer bumpWheat: 50 negated.
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:45:43'!
space35
	"Sep week 1"

	self disableAll: {'Move'. 'Fate'}.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:46:12'!
space36
	"Sep week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:46:33'!
space37
	"Harvest Moon"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	currentPlayer ifCows
		ifFalse: [currentPlayer missedCattleHarvest].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:46:48'!
space38
	"Sep week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer halveCows.
	currentPlayer ifCows
		ifFalse: [currentPlayer missedCattleHarvest].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:30:46'!
space39
	"Sep week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer ifFruit
		ifTrue: [currentPlayer allocateFruitCost: 2000].
	currentPlayer ifCows
		ifFalse: [currentPlayer missedCattleHarvest].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/1/2019 12:59:23'!
space4
	"Jan week 3"
	self disableAll: {'Move'}.
	currentPlayer ifCows: 500 negated.
	self triggerEvent: #itemChange.  "let the effect of the above be seen separate from salary"
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	self endTurnCheck.
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:32:21'!
space40
	"Oct week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	currentPlayer ifCows
		ifFalse: [currentPlayer missedCattleHarvest].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:47:09'!
space41
	"Oct week 2"
	
	self disableAll: {'Move'}.
	self enableAll: {'Fate'}.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:33:28'!
space42
	"Oct week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:47:29'!
space43
	"Oct week 4"
	
	self disableAll: {'Move'}.
	self enableAll: {'Fate'}.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifFalse: [| a |
			a _ currentPlayer assets at: #Apples.
			a missed: a missed + 1].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:35:51'!
space44
	"Nov week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifFalse: [| a |
			a _ currentPlayer assets at: #Apples.
			a missed: a missed + 1.
			self endTurnCheck].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:36:41'!
space45
	"Nov week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifFalse: [| a |
			a := currentPlayer assets at: #Apples.
			a missed: a missed + 1.
			self endTurnCheck].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 15:57:35'!
space46
	"Nov week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 1000.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifFalse: [| a |
			a _ currentPlayer assets at: #Apples.
			a missed: a missed + 1].
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:38:03'!
space47
	"Nov week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer allocateFruitCost: 1000.
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:38:51'!
space48
	"Dec week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	(currentPlayer assets at: #Wheat)
		gross: 500 + (currentPlayer assets at: #Wheat) gross.
	self triggerEvent: #itemChange.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/18/2019 13:39:05'!
space49
	"Dec week 2"
	
	self disableAll: {'Move'}.
	self enableAll: {'Fate'}.
	self attemptHarvest! !

!Farm methodsFor: 'space-related' stamp: 'dhn 10/9/2017 17:45:12'!
space5
	"Jan week 4"
	
	self disableAll: {'Move'}.
	self triggerEvent: #itemChange.
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	currentPlayer doubleHay.
	self endTurnCheck.
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:16:45'!
space6
	"Feb week 1"
	
	self disableAll: {'Move'}.
	self triggerEvent: #itemChange.
	currentPlayer tally: 1000.
	self triggerEvent: #itemChange.
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	self triggerEvent: #itemChange.
	self queryWin: won! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 13:25:00'!
space7
	"Feb week 2"
	
	self disableAll: {'Move'. 'End Turn'}.
	self triggerEvent: #itemChange.
	self enableAll: {'Fate'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/17/2019 13:02:04'!
space8
	"Feb week 3"
	
	self disableAll: {'Move'}.
	GamePopUp inform: 'You will now go to Spring Planting.' title: 'Spring Ahead'.
	self triggerEvent: #itemChange.
	token slideRight: currentPlayer position to: (Farm specialSpaces at: #spring)! !

!Farm methodsFor: 'space-related' stamp: 'dhn 4/15/2019 18:06:50'!
space9
	"Feb week 4"
	
	self disableAll: {'Move'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	currentPlayer passedGo ifTrue: [currentPlayer salary].
	self triggerEvent: #itemChange.
	self endTurnCheck! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:58:25'!
spaces
	"Answer the value of spaces"
	
	^ spaces! !

!Farm methodsFor: 'auctioning' stamp: 'dhn 4/10/2019 10:22:18'!
assetAuctionItem
	"Answer the value of assetAuctionItem"

	assetAuctionItem ifNil: [assetAuctionItem _ 0]. 	"nil is unacceptable during model initialization"
	^ assetAuctionItem! !

!Farm methodsFor: 'auctioning' stamp: 'dhn 4/10/2019 10:16:03'!
assetAuctionItem: anObject
	"Set the value of assetAuctionItem"
	
	(assetAuctionItem _ anObject) ifNotNil: [
		self triggerEvent: #itemChange.
		self changed: #assetAuctionItem]! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/17/2017 20:32:42'!
alternativeTo: aName
	"Answer an option name which is an alternative to aName"

		^ self assetOption at: aName! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/17/2017 20:32:06'!
anotherNameFor: aName
	"Answer an asset name which is an alternative to aName"

		^ self assetOption keyAtValue: aName! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/12/2017 14:35:26'!
assetList
	"Answer the list of assets in order suitable for auction."
	^ #('Hay' 'Grain' 'Fruit' 'CattleOnFarm' 'Ahtanum' 'Rattlesnake' 'Cascade' 'Toppenish' 'Tractor' 'Harvester')! !

!Farm class methodsFor: 'database' stamp: 'dhn 5/3/2019 16:54:43'!
assetOption
	"Answer the relationship between asset and option names"

		^ Dictionary new
			at: #Hay put: #Hay;
			at: #Wheat put: #Grain;
			at: #Corn put: #Grain;
			at: #Cherries put: #Fruit;
			at: #Apples put: #Fruit;
			at: #Tractor put: #Tractor;
			at: #Harvester put: #Harvester;
			at: #CattleOnFarm put: #Livestock;
			at: #Ahtanum put: #Ahtanum;
			at: #Rattlesnake put: #Rattlesnake;
			at: #Cascade put: #Cascade;
			at: #Toppenish put: #Toppenish;
			at: #Grain put: #Grain;
			at: #Fruit put: #Fruit;
			yourself! !

!Farm class methodsFor: 'database' stamp: 'dhn 4/24/2019 12:54:25'!
bankName
	"Answer the name of the bank"
	
	^ 'First Friendly Bank'! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/8/2017 15:50:14'!
describeSpaces
	"Descriptions for the spaces on the board."
	
	^ OrderedCollection new
		add: 'CHRISTMAS
VACATION

COLLECT $1000 Christmas bonus.

COLLECT year''s wage of $5000 as you pass.';

		add: 'January
Week 1

PAY 10% interest on Bank Notes on hand';

		add: 'January
Week 2

Hibernate. Draw Option to Buy';

		add: 'January
Week 3

Bitter cold spell. PAY $500 if you own cows.';

		add: 'January
Week 4

Beautiful Days!! Double all your hay harvests this year.';

		add: 'February
Week 1

Warm snap. You''re in the field 2 weeks early. COLLECT $1000.';

		add: 'February
Week 2

Stuck in a muddy corral. Draw Farmer''s Fate.';

		add: 'February
Week 3

Ground thaws. Start plowing early Go directly to Spring Planting.';

		add: 'February
Week 4

Rainy day. Draw Option to Buy.';

		add: 'March
Week 1

Becomes obvious your wheat has winter killed. PAY $2000 to replant.';

		add: 'March
Week 2

Start plowing late. PAY $500.';

		add: 'March
Week 3

Hurt your back. Go back to the second week in January.';

		add: 'March
Week 4

Frost forces you to heat fruit. PAY $2000 if you own fruit.';

		add: 'April
Week 1

Done plowing. Take a day off. Draw Option to Buy.';

		add: 'SPRING PLANTING

Plant corn on time. Double corn yield this year.';

		add: 'April
Week 3

More rain. Field work shut down. PAY $500.';

		add: 'April
Week 4

Equipment breakdown. PAY $1000.';

		add: 'May
Week 1

The whole valley is green. COLLECT $500.';

		add: 'May
Week 2

Wind storm makes you replant corn. PAY $500.';

		add: 'May
Week 3

Cut your hay just right. COLLECT $1000 bonus.';

		add: 'May
Week 4

Memorial Day weekend. Draw Option to Buy.';

		add: 'JUNE
Week 1

Rain storm ruins unbaled hay. Cut your harvest check in half.';

		add: 'June
Week 2

Good growing weather. COLLECT $500 bonus.';

		add: 'June
Week 3

Rain splits your cherries. Cut your harvest check in half.';

		add: 'June
Week 4

Dust storm. Draw Farmer''s Fate.';

		add: 'INDEPENDENCE
DAY BASH';

		add: 'July
Week 1

Good weather for your second cutting of hay. Double hay harvest check.';

		add: 'July
Week 2

Hot!! Wish you were in the mountains. Draw Option to Buy.';

		add: 'July
Week 3

It''s a cooker!! 114 degrees in the shade. Wipe your brow and go to Harvest Moon after getting hay check.';

		add: 'July
Week 4

85 degrees. Wheat heads filling out beautifully. Add $50 per acre to your harvest check.';

		add: 'August
Week 1

You''re right on time and farming like a pro. Go to the fourth week of February. COLLECT your year''s wage of $5000.';

		add: 'August
Week 2

Storm clouds brewing. COLLECT $1000, if you have a Harvester.';

		add: 'August
Week 3

Finish wheat harvest with no breakdowns. COLLECT $500.';

		add: 'August
Week 4

Rain sprouts unharvested wheat. Cut price $50 per acre on harvest check.';

		add: 'September
Week 1

Tractor owners: bale hay, then go to third week of November COLLECT your $1000 there, then harvest your fruit.';

		add: 'September
Week 2

Sunny skies at the County Fair. Draw Option to Buy.';

		add: 'HARVEST MOON
smiles on you. COLLECT $500.';

		add: 'September
Week 3

Market collapses. Cut livestock check in half.';

		add: 'September
Week 4
Codling Moth damage to apples lowers fruit grade. PAY $2000 if you own fruit.';

		add: 'OCTOBER
Week 1

Indian Summer. COLLECT $500.';

		add: 'October
Week 2

Good Pheasant Hunting. Draw Farmer''s Fate.';

		add: 'October
Week 3

Park your baler for the winter. Draw Option to Buy.';

		add: 'October
Week 4

Annual Deer Hunt. Draw Farmer''s Fate.';

		add: 'November
Week 1

Irrigation season over. Draw Option to Buy';

		add: 'November
Week 2

Good weather, harvest winding up. COLLECT $500.';

		add: 'November
Week 3

Good weather holding. COLLECT $1000.';

		add: 'November
Week 4

Early freeze kills fruit buds. Pay $1000 if you have fruit.';

		add: 'December
Week 1

Cold and dry, perfect Field Corn harvesting. COLLECT $500.';

		add: 'December
Week 2

First snow. Draw Farmer''s Fate.';
	yourself! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/26/2017 10:31:59'!
expenseDesc
	"Answer the description of each expense."
	| temp |
	temp := OrderedCollection new.
	
2 timesRepeat: [temp add:(#tally:->-500)->'Equipment breakdown,
PAY $500'].

2 timesRepeat: [temp add:(#tally:->-1000)->'Equipment in the shop. The delay costs.
	
PAY $1,000'].

2 timesRepeat: [temp add:(#tally:->-500)->'Parts bill due,
PAY $500'].

2 timesRepeat: [temp add:(#tally:->-1000)->'Fuel bill due,
PAY $1,000'].

2 timesRepeat: [temp add:(#fertilizer:->-100)->'Fertilizer bill due,
PAY $100 per acre'].

2 timesRepeat: [temp add:(#tally:->-3000)->'Seed bill due,
PAY $3,000'].

2 timesRepeat: [temp add:(#interest:->0.1)->'Semi-annual interest due. 
PAY 10% on Bank Notes on hand'].

2 timesRepeat: [temp add:(#noTractor:->-2000)->'Custom hire bill due,
PAY $2,000 if you do not own a Tractor'].

2 timesRepeat: [temp add:(#noHarvester:->-2000)->'Custom hire bill due,
PAY $2,000 if you do not own a Harvester'].

temp add:(#tally:->-1500)->'Farm real estate taxes due,
PAY $1,500'.
	
temp add:(#tally:->-1500)->'Farmer''s insurance due,
PAY $1,500'.
	
temp add:(#tally:->-500)->'Monthly electric bill due for irrigation pumping,
PAY $500'.
	
temp add:(#wireWorms:->-100)->'Wire worms infect Grain acreage,
PAY $100 per grain acre to fumigate'.
	
temp add:(#ifCows:->-500)->'Veterinary bill due,
PAY $500 if you own cows'.
	
temp add:(#feedBill:->-500)->'Feed bill due,
PAY $500 per cow'.
	
		^temp! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/26/2017 09:30:09'!
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

(#noTractor:->-3000)->'Custom hire bill due. If you have no Tractor PAY $3,000'.

(#noTractor:->-3000)->'Custom hire bill due. If you have no Tractor PAY $3,000'.

(#noHarvester:->-2500)->'The President slaps on a Grain Embargo while you''re waiting for the custom harvester to show up. 
Instant market collapse. PAY $2,500 if you don''t own your own Harvester'.

(#slaughterCows:->nil)->'A leaking electrical motor at Feed Mill contaminates your load of feed with PCB. 
State Ag Inspector requires you to slaughter cows on your farm (not on leased land) 
with no reimbursement.'.

(#heldCalves:->2000)->'Held some of your calves and the market jumped. COLLECT $2,000 if you have cows.'.

(#maggotFly:->500)->'The Apple Maggot Fly, cousin of the dreaded Medfly, is found in an insect trap in your orchard. 
Your orchard is quarantined and you lose a lucrative export contract. PAY $500 per Fruit acre.'.

(#goDirectly:->3)->'Drought year!! Go back to the second week of January. 
Do not collect your $5,000 year''s wages.'.

(#oilLease:->100)->'Oil company pays you $100 per acre for Oil and Gas lease on your farm.'.

(#boostWheat:->2000)->'Russian sale boosts wheat prices. COLLECT $2,000'.

(#wheatWeeds:->0.5)->'Windy spring, didn''t get your wheat sprayed. 
Weeds cut your wheat crop in half throughout this year.'.

(#truckerStrike:->1000)->'Truckers strike delays Fruit in transport, lots of spoilage. 
PAY $1,000 per Fruit acre.'.

(#halveCherries:->0.5)->'Some TV talk show host''s worries about the "dangers" of the primary bug control spray 
you use on your cherries causes a National cherry market collapse. 
Cut your cherry crop in half if you haven''t already harvested this year.'.

(#disasterPmt:->100)->'Federal Crop Disaster payment saves your bacon. COLLECT $100 per grain acre.'.

(#tally:->(-7000))->'Income taxes due. PAY $7,000'.

(#tally:->1000)->'Marketing Co-op holds out for higher price. Processor gives in. COLLECT $1,000'.

(#customHire:->2000)->'Custom hire out with your Harvester. 
COLLECT $2,000 from each player who has none.'.

(#calfWeights:->1.5)->'Sharp management, production testing and your computer record system cause your calf weaning weights to soar. 
RECEIVE a 50% bonus in your Livestock Harvest check each of the next two years.'.
	}.! !

!Farm class methodsFor: 'database' stamp: 'dhn 4/17/2019 17:51:49'!
harvestSeason
	"Answer an ordered collection of harvest seasons in order of their board positions."

	^ OrderedCollection new 
		 add: #WINTER withOccurrences: 19;	"1 to 19"
		 add: #Hay withOccurrences: 4;		"20 to 23"
		 add: #Cherries withOccurrences: 3;	"24 to 26"
		 add: #Hay withOccurrences: 3;		"27 to 29"
		 add: #Wheat withOccurrences: 5;		"30 to 34"
		 add: #Hay withOccurrences: 2;		"35 to 36"
		 add: #Livestock withOccurrences: 4;	"37 to 40"
		 add: #Hay withOccurrences: 2;		"41 to 42"
		 add: #Apples withOccurrences: 4;	"43 to 46"
		 add: #Corn withOccurrences: 3;		"47 to 49"
		 yourself! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/8/2017 15:52:22'!
optionsDesc
	"Answer a dictionary of things that farmers can purchase."
	
	^ Dictionary new
		at: #Tractor put: Tractor new;
		at: #Harvester put: Harvester new;
		at: #Fruit put: Fruit new;
		at: #Grain put: Grain new;
		at: #Hay put: Hay new;
		at: #Livestock put: Livestock new;
		at: #Ahtanum put: Ahtanum new;
		at: #Rattlesnake put: Rattlesnake new;
		at: #Cascade put: Cascade new;
		at: #Toppenish put: Toppenish new;
		yourself! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/8/2017 15:50:39'!
optionsNames
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
		 yourself! !

!Farm class methodsFor: 'database' stamp: 'dhn 4/17/2019 12:14:35'!
specialSpaces
	"Answer special space symbols and their corresponding board positions"
	
	^ Dictionary new
		at: #moon put: 37;
		at: #jan2 put: 3;
		at: #feb4 put: 9;
		at: #nov3 put: 46;
		at: #spring put: 15;
		yourself! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:18:31'!
cellsForGame
	"Answer the number of board spaces in view at any time"
	
	^ 7! !

!Farm class methodsFor: 'operation' stamp: 'dhn 8/31/2017 15:00:11'!
defaultGoal
	"Answer the default winning net asset goal"
	
	^ 250000! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/17/2017 14:29:55'!
translate: aName
	"Answer a name suited for auctioning or buying, translated from aName"
	
	^ (Dictionary new
		at: #Hay put: #Hay;
		at: #Grain put: #Wheat; 	"same as Corn"
		at: #Fruit put: #Cherries; 	"same as Apples"
		at: #Tractor put: #Tractor;
		at: #Harvester put: #Harvester;
		at: #CattleOnFarm put: #CattleOnFarm;
		at: #Ahtanum put: #Ahtanum;
		at: #Rattlesnake put: #Rattlesnake;
		at: #Cascade put: #Cascade;
		at: #Toppenish put: #Toppenish;
		yourself)
			at: aName! !

!Farm class methodsFor: 'setup' stamp: 'dhn 8/31/2017 10:58:45'!
season
	"Answer a collection of Seasons in order of their starting board positions."
	
	^ OrderedCollection new
		add: (FarmSeason new desc: 'WINTER'; color: Color black; range: 1 @ 19; textColor: true);
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

!FarmToken methodsFor: 'accessing' stamp: 'dhn 8/31/2017 15:21:13'!
doubled
	"Answer the value of doubled"

	^ doubled! !

!FarmToken methodsFor: 'operations' stamp: 'dhn 4/10/2019 21:51:23'!
moved
	"Perform the results of the move"
	
	doubled contents: model currentPlayer doubledString.
	model doSpace.
	model currentPlayer harvestEnabled ifFalse: [model updateHistory]! !

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/2/2017 19:44:24'!
position: aCell
	"Position the receiver over the board cell numbered by aCell"
	| horiz |
	
	self morphPosition: self posAdjust.
	horiz _ (model cells at: aCell) morphPosition x.
	self morphPosition: (self morphPosition translatedBy: (horiz@0))! !

!FarmToken methodsFor: 'initialization' stamp: 'dhn 9/2/2017 11:18:41'!
initialize

	super initialize.
	
	labelArea _ LayoutMorph newColumn 
		layoutSpec: LayoutSpec useAll;
		color: Color transparent;
		name: 'label area';
		separation: 1;
		padding: #center.
	labelArea
		addMorph: self makeIdArea;
		addMorph: self makeDoubledArea.

	self addMorphFront: labelArea! !

!FarmToken methodsFor: 'initialization' stamp: 'dhn 4/10/2019 12:25:49'!
layoutSubmorphs

	labelArea morphExtent: self morphExtent! !

!FarmToken methodsFor: 'initialization' stamp: 'dhn 8/31/2017 15:13:17'!
makeDoubledArea
	"Lay out the area for the arrow"
	| area |
	
	area _ LayoutMorph newRow
		color: Color transparent;
		name: #doubled;
		padding: #center.
	
	doubled _ (StringMorph contents: '') 
		emphasis: AbstractFont boldCode;
		font: (AbstractFont familyName: 'DejaVu' aroundPointSize: 10).
		
	area addMorph: doubled.
	^ area	layoutSpec: (LayoutSpec  
		proportionalWidth: 1.0)! !

!FarmToken methodsFor: 'initialization' stamp: 'dhn 8/31/2017 15:11:56'!
makeIdArea
	"Lay out the area for the arrow"
	| area |
	
	area _ LayoutMorph newRow
		color: Color transparent;
		name: #id;
		padding: #center.
	
	id _ (StringMorph contents: 'Player') 
		emphasis: AbstractFont boldCode;
		font: (AbstractFont familyName: 'DejaVu' aroundPointSize: 10).
		
	area addMorph: id.
	^ area	layoutSpec: (LayoutSpec  
		proportionalWidth: 1.0)! !

!FarmButton methodsFor: 'accessing' stamp: 'dhn 9/2/2017 20:38:50'!
actionSelector: anObject
	"Set the value of actionSelector"
	
	actionSelector _ anObject! !

!FarmButton methodsFor: 'accessing' stamp: 'dhn 9/5/2017 12:33:32'!
deferred
	"Answer the value of deferred"

	^ deferred! !

!FarmButton methodsFor: 'accessing' stamp: 'dhn 9/5/2017 12:33:32'!
deferred: anObject
	"Set the value of deferred"

	deferred _ anObject! !

!FarmButton methodsFor: 'operating' stamp: 'dhn 9/6/2017 16:09:21'!
disableButton
	"Change to the disabled state, caching the actionSelector"
	
	self enabled 
		ifTrue: [
			self deferred
				ifNil: [self oldTarget: self actionSelector]
				ifNotNil: [
					self oldTarget: self deferred.
					self deferred: nil].
			self action: nil.
			self enabled: false.
			self color: GameButtonMorph disabledColor]! !

!FarmButton methodsFor: 'operating' stamp: 'dhn 9/6/2017 16:08:41'!
enableButton
	"Change to the enabled state"
	
	self enabled ifFalse: [
		oldTarget ifNotNil: [self action: oldTarget].
		self enabled: true.
		self color: GameButtonMorph enabledColor]! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 5/1/2019 12:00:19'!
buildMorphicWindow

	pasteup _ PasteUpMorph new
		name: #pasteup;
		color: Color transparent.
		
	layoutMorph addMorph: pasteup layoutSpec: LayoutSpec useAll.
	board _ LayoutMorph newColumn name: #board.
	board color:  (Color r: 0.986 g: 0.986 b: 0.986).
	pasteup addMorph: board.
	model world: pasteup.
	
	model when: #quitGame send: #delete to: self.
	model when: #itemChange send: #displayNumbers to: self.
	model when: #titleChange send: #titleChange: to: self with: #player.
	model when: #showToken send: #showToken to: self.
	model when: #showSeasons: send: #showSeasons: to: self with: #index.
	model when: #showDraw send: #showDraw: to: self with: #option.
	model when: #optionDrawn send: #checkEnd to: self.
	model when: #showAssets send: #showAssets to: self.
	model when: #showYourself send: #showYourself to: self.
	model when: #showEverybody send: #showEverybody to: self.
	model when: #showHistory send: #showHistory to: self.
	model when: #showAssetAuction send: #showAssetAuction to: self.
	model when: #showAuctionOptions send: #showAuctionOptions to: self.
	model when: #endOfMove send: #possiblyHarvest to: self.
	model when: #clicked send: #attemptEnd to: self.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:28:09'!
initialize

	super initialize! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:38:25'!
layoutSubmorphs

    super layoutSubmorphs.
    self board morphExtent: self board owner morphExtent! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 4/8/2019 16:06:18'!
makeAddPlayerButton
	"Answer the 'Players' button"

	^ (GameButtonMorph label: 'Players' action: #getPlayers state: true model: self)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Use this button to enter names of two to six players;
entering an empty name or cancel will start the game'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:33:43'!
makeAuctionButton
	"Answer the 'Auction' button"

	^ (FarmButton label: 'Auction' action: #doAuction state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Auction options and equipment'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:29:09'!
makeButtonArea
	"Lay out the area for buttons"
	
	buttonArea _ (LayoutMorph newRow separation: 5)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: self class titleHeight
			minorDirectionPadding: #center).
	buttonArea
			color: Color transparent;
			name: #buttons;
			padding: #center.
			
	board addMorph: buttonArea.
	
	^ buttonArea
		! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/7/2017 14:49:58'!
makeBuyOptionButton
	"Answer the 'Option' button"

	^ (GameButtonMorph label: 'Purchase' action: #showOpts state: true model: self)
		layoutSpec: self class buttonSize;
		setBalloonText: 'See what options you have and make purchases during WINTER.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/30/2017 18:49:08'!
makeCellsArea
	"Lay out the area which shows some spaces of the board"
	| cellArea view mm mt |
	
	cellArea _ (LayoutMorph newRow separation: 0)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 1.0
			minorDirectionPadding: #center);
		name: #'cell area'.
	
	1 to: model class cellsForGame do: [:ix |
		view _ (CellView newColumn
			layoutSpec: (LayoutSpec proportionalWidth: 1 / model class cellsForGame);
			name: #cell).
		view addMorph: (mt _ (GameCell 
			textProvider: self
			textGetter: #describe)
				layoutSpec: (LayoutSpec proportionalWidth: 1.0);
				color: self class cellColor;
				borderWidth: 1;
				name: 'cell text').
		view addMorph: (mm _ (LayoutMorph newRow separation: 4)
			layoutSpec: (LayoutSpec 
				proportionalWidth: 1.0
				fixedHeight: 20
				minorDirectionPadding: #center);
			color: self class cellColor;
			padding: #center;
			name: #marks).
		view 
			marksPane: mm;
			textPane: mt.
		model cells add: view].
		
	^ cellArea addAllMorphs: model cells reversed
		
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:34:15'!
makeDrawFateButton
	"Answer the 'Fate' button"

	^ (FarmButton label: 'Fate' action: #drawFate state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Determine your Farmer''s Fate.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:34:28'!
makeEndTurnButton
	"Answer the 'End Turn' button"

	^ (FarmButton label: 'End Turn' action: #endTurn state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Let the next player have a turn. Not enabled as long as Expense, Fate, Harvest, or Move are enabled.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:34:40'!
makeHarvestButton
	"Answer the 'Harvest' button"

	^ (FarmButton label: 'Harvest' action: #harvest state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Harvest the crop for the season indicated above the space.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:34:53'!
makeMoveButton
	"Answer the 'Move' button"

	^ (FarmButton label: 'Move' action: #move state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Move the player from one to six spaces, based on the "roll" of a die.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:31:59'!
makeNumbersArea
	"Lay out the area for player cash on hand"
	
	numbersArea _ (LayoutMorph newRow separation: 0)
		layoutSpec: (LayoutSpec proportionalWidth: 1.0
			proportionalHeight: self class titleHeight
			minorDirectionPadding: #center).
	numbersArea
			color: Color transparent;
			name: #numbers;
			padding: #center.
			
	^ numbersArea addMorph: ((StringMorph contents: '') 
		emphasis: AbstractFont boldCode;
		font: (AbstractFont familyName: 'DejaVu' pointSize: 22))
		! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:32:44'!
makeOthersArea
	"Lay out the area for player cash on hand"
	
	othersArea _ (LayoutMorph newRow separation: 0)
		layoutSpec: (LayoutSpec proportionalWidth: 1.0
			proportionalHeight: self class titleHeight
			minorDirectionPadding: #center).
	^ othersArea
		color: Color transparent;
		name: #others;
		padding: #center! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:35:07'!
makePayExpenseButton
	"Answer the 'Expense' button"

	^ (FarmButton label: 'Expense' action: #payExpense state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Pay the farming expenses which are owed.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/7/2017 13:59:47'!
makePayLoanButton
	"Answer the 'Pay Loan' button"

	^ (FarmButton label: 'Pay Loan' action: #showLoan state: true model: self)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Transfer cash to pay off some debt.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:35:41'!
makeQuitGameButton
	"Answer the 'Quit' button"
	
	^ (FarmButton label: 'Quit' action: #quitGame state: true model: self)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Completely ends the game. Nothing is saved.';
		color: (Color orange alpha: 0.9)! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:33:14'!
makeSeasonsArea
	"Lay out the area for seasons"
	
	seasonsArea _ (LayoutMorph newRow separation: 0)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.08
			minorDirectionPadding: #center).
	^ seasonsArea
			color: Color lightGreen;
			name: #seasons! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:35:55'!
makeSettingsButton
	"Answer the 'Settings' button"
	
	^ (FarmButton label: 'Settings' action: #doSettings state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Change some of the game parameters'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:36:04'!
makeShowStatsButton
	"Answer the 'Stats' button"

	^ (FarmButton label: 'Stats' action: #doStats state: true model: model)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Show statistics which have been accumulated during the game.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:36:17'!
makeTourButton
	"Answer the 'Tour' button"
	
	^ (FarmButton label: 'Tour' action: #doTour state: true model: self)
		layoutSpec: self class buttonSize;
		setBalloonText: 'Cause the board to move around so you can see what is in all the spaces.'! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/31/2017 14:34:48'!
playButtonSet
	"Answer the buttons used to play the game"

	buttonArea 
		removeAllMorphs;
		addMorph: self makeShowStatsButton;
		addMorph: self makeAuctionButton;
		addMorph: self makePayLoanButton;
		addMorph: self makeBuyOptionButton;
		addMorph: self makeEndTurnButton;
		addMorph: self makePayExpenseButton;
		addMorph: self makeDrawFateButton;
		addMorph: self makeHarvestButton;
		addMorph: (model moveButton: self makeMoveButton);
		addMorph: self makeQuitGameButton! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 4/12/2019 11:01:09'!
prepareToken: aPlayer
	"Set ivars of the player's token"
	| w h |
	
	w _ owner morphExtent x * 0.13.
	h _ w * 0.5.
	model token id contents: aPlayer identity.
	model token doubled contents: aPlayer doubledString.
	model token 
		color: aPlayer color;
		morphExtent: w@h;
		morphPosition: owner morphExtent * (0.006@0.72).
	pasteup addMorph: model token.
	^ model token! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/30/2017 20:41:28'!
showSeasons: associations 
	"Display the seasons contained in associations"
	| width set bm txt |
			
	seasonsArea removeAllMorphs.
	width _ layoutMorph morphWidth / model class cellsForGame.
	set _ OrderedCollection new.
	associations do: [:k | 	| first last sea |
			first _ k key x - 1.
			last _ k key y.
			bm _ LayoutMorph newRow
				padding: #center;
				name: #season.
			seasonsArea addMorph: bm
				layoutSpec: (LayoutSpec proportionalWidth: width * (last - first) proportionalHeight: 1.0).
			sea _ k value.
			bm color: sea color.
			txt _ StringMorph new
				emphasis: 1;  "emphasis: bold=1"
				font: (AbstractFont familyName: 'DejaVu' pointSize: 18).
			bm addMorph: txt..
			txt color: (sea textColor
				ifTrue: [Color white]
				ifFalse: [Color black]).
			txt contents: sea desc.
			set add: txt].
	^ set! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:35:45'!
startButtonSet
	"Answer the buttons used to start the game"

	buttonArea 
		removeAllMorphs;
		addMorph: self makeAddPlayerButton;
		addMorph: self makeSettingsButton;
		addMorph: self makeTourButton;
		addMorph: self makeQuitGameButton.
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/31/2017 12:58:40'!
startGame
	"Change the buttons and start the game"
	
	self playButtonSet.
	model players do: [:ea | 
		ea 
			when: #displayInvoice 
			send: #displayInvoice:title: 
			to: self 
			withArguments: #(#invoice #heading)].
	model playerIndex: 0. "retain players in order of entry"
	model 
		testGoal;
		nextPlayer.
	model initialButtonState! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 4/22/2019 18:36:51'!
attemptEnd
	"Try to enable the End Turn button"
	| next |
	
	(model disabledAll: {'Harvest'. 'Fate'. 'Expense'})
		ifTrue: [
			next _ FarmingGame secondSpace at: model currentPlayer position ifAbsent: [nil].
			next
				ifNil: [
					"no secondary move"
					model currentPlayer position = (Farm specialSpaces at: #jan2)
						ifTrue: [model doSpace]
						ifFalse: [
							model optionDrawn
								ifFalse: [model enableAll: {'End Turn'}]]]
				ifNotNil: [
					"a secondary move is required"
					model perform: next first with: next second]]! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 4/22/2019 13:35:29'!
checkEnd
	"Enable End Turn after an option is acknowledged"

	model optionDrawn: false.
	model endTurnCheck! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 3/27/2019 22:30:57'!
displayNumbers
	"Display cash, debt, and goal progress"
	| pl c d net otherLead pluralForm others |
	
	(pl _ model currentPlayer) ifNotNil: [
		c _ '$', pl cash truncated printStringWithCommas.
		d _ '$', pl debt negated asInteger printStringWithCommas.
		net _ (pl netAssets / model goal * 100) printStringFractionDigits: 1.
		numbersArea submorphs first 
			contents: 'Cash: ', c, ' Debt: ', d, ' Goal Progress: ', net, '%';
			color: pl color.
		pluralForm _ model players size = 2
			ifTrue: ['Player''s']
			ifFalse: ['Players'''].
		otherLead _ (StringMorph contents: (String streamContents: [:string |
			string
				nextPutAll: 'Other ';
				nextPutAll: pluralForm;
				nextPutAll: ' Cash: '])).
		otherLead
			emphasis: AbstractFont boldCode;
			color: Color lightBrown;
			font: (AbstractFont familyName: 'DejaVu' pointSize: 18).
		othersArea 
			removeAllMorphs;
			addMorph: otherLead.
		others _ model players select: [:a | a ~= pl].
		others do: [:ea | | x |
			x _ ' $', ea cash truncated printStringWithCommas.
			othersArea addMorph: ((StringMorph contents: x) 
				emphasis: AbstractFont boldCode;
				color: ea color;
				setBalloonText: 'cash held by ', ea identity;
				font: (AbstractFont familyName: 'DejaVu' pointSize: 18))]]! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 8/31/2017 12:38:51'!
doTour
	"Start the tour of the board"
	| choice resp |
	
	model disableAll: {'Players'. 'Tour'}.
	choice _ (PopUpMenu labelArray: #('Automatic' 'Interactive')) startUpWithCaption: nil.
	choice = 1 ifTrue: [self tourAt: 500].
	choice = 2 ifTrue: [
		resp _ '1'.
		[resp ~= ''] whileTrue: [
			resp _ FillInTheBlankMorph request: 'Board starting where?' initialAnswer: resp.
			(resp notEmpty and: [resp asNumber > 0]) ifTrue: [
				self showSeasons: (model parseSeasonsAt: resp asNumber).
				self model cellsAt: resp asNumber]]].
	model enableAll: {'Players'. 'Tour'}! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 4/22/2019 13:44:11'!
possiblyHarvest
	"Perform the method associated with a space"
	
	"model currentPlayer harvestEnabled
		ifTrue: [model doSpace]
		ifFalse: [model enableAll: {'End Turn'}]"
		
	model doSpace! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 3/27/2019 22:15:56'!
titleChange: aPlayer
	"Change the title, showing player data in color"
	"Display cash, debt, and goal progress"
	| c d net otherLead pluralForm others |
	
	gameTitle contents: aPlayer identity , '''s turn.'.
	gameTitle color: aPlayer color.
	
	c _ '$', model currentPlayer cash truncated printStringWithCommas.
	d _ '$', model currentPlayer debt negated asInteger printStringWithCommas.
	net _ (model currentPlayer netAssets / model goal * 100) printStringFractionDigits: 1.
	numbersArea submorphs first 
		contents: 'Cash: ', c, ' Debt: ', d, ' Goal Progress: ', net, '%';
		color: model currentPlayer color.
	pluralForm _ model players size = 2
		ifTrue: ['Player''s']
		ifFalse: ['Players'''].
	otherLead _ (StringMorph contents: (String streamContents: [:string |
		string
			nextPutAll: 'Other ';
			nextPutAll: pluralForm;
			nextPutAll: ' Cash: '])).
	otherLead
		emphasis: AbstractFont boldCode;
		color: Color lightBrown;
		font: (AbstractFont familyName: 'DejaVu' pointSize: 18).
	othersArea 
		removeAllMorphs;
		addMorph: otherLead.
	others _ model players select: [:a | a ~= model currentPlayer].
	others do: [:ea | | x |
		x _ ' $', ea cash truncated printStringWithCommas.
		othersArea addMorph: ((StringMorph contents: x) 
			emphasis: AbstractFont boldCode;
			color: ea color;
			setBalloonText: 'cash held by ', ea identity;
			font: (AbstractFont familyName: 'DejaVu' pointSize: 18))]! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 8/31/2017 12:42:19'!
tourAt: anInterval 
	"Take a tour of the board."
	| limit i |
	
	limit _ model class describeSpaces size + 2.
	i _ 0.
	self when: #morphicStep evaluate: [ :delta |
		i _ i + 1.
		i < limit 
			ifTrue: [model positionBoardTo: i]
			ifFalse: [
				self stopStepping.
				self removeActionsForEvent: #morphicStep]].
	self startSteppingStepTime: anInterval. 	"time of each increment of the hop"! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 8/29/2017 20:46:56'!
describe

	^ ''! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 9/4/2011 16:53'!
seasons
	"Answer the value of seasons"

	^ seasons! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 9/4/2011 16:53'!
seasons: anObject
	"Set the value of seasons"

	seasons := anObject! !

!FarmingGame methodsFor: 'termination' stamp: 'dhn 8/31/2017 17:58:24'!
quitGame

	(self confirm: 'Are you sure you want to quit ', FarmingGame asString, '?')
		ifTrue: [model quitGame]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 5/1/2019 11:41:32'!
showAssetAuction
	"Open an asset auction window"
	| pl win purpose |
	
	model disableAll: {'Auction'. 'End Turn'}.
	model auctionList: model currentPlayer auctionable.
	pl _ model currentPlayer.
	purpose _ pl identity, '''s Assets'.
	win _ SellAsset openOn: model.			
	win buyers color: Color lightBrown.
	win openInWorld: pasteup.
	win 
		setLabel: 'Auction of ', purpose;
		color: (Color r: 0.986 g: 0.986 b: 0.986);
		setWindowColor: pl color;
		startButtons;
		morphPosition: self windowPosition;
		morphExtent: 450@300! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/13/2017 10:48:39'!
showAssets
	"Show window for status of assets"
	| pl win |
		
	pl _ model currentPlayer.
	pl assets notEmpty
		ifTrue: [
			win _ AssetView openOn: model.
			win openInWorld: pasteup.
			win
				setLabel: (pl identity, '''s Assets');
				player: pl;
				setWindowColor: pl color;
				startButtons;
				morphPosition: self windowPosition;
				morphExtent: 300 @ 220]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 4/28/2019 10:39:29'!
showAuctionAssets
	"Show window for auctioning assets"
	| pl win |
		
	pl _ model currentPlayer.
	pl assets notEmpty
		ifTrue: [
			win _ SellAsset openOn: model.
			win openInWorld: pasteup.
			win
				seller: pl;
				setWindowColor: pl color;
				startButtons;
				morphPosition: self windowPosition;
				morphExtent: 300 @ 220.
			model triggerEvent: #itemChange]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 5/3/2019 14:05:54'!
showAuctionOptions
	"Show window for auctioning options"
	| pl |

	pl _ model currentPlayer.
	pl options do: [:ea | {(pl assets at: (Farm alternativeTo: ea)) forOptionAuction} print]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 10/9/2017 15:36:33'!
showDraw: anObject
	"Show window with description of an option"
	| pl win |
		
	pl _ model currentPlayer.
	win _ DrawView openOn: model.
	win openInWorld: pasteup.
	model disableAll: {'End Turn'}.
	win
		setLabel: ('Option for ', pl identity);
		setWindowColor: pl color;
		startButtons;
		morphPosition: self windowPosition;
		details: anObject;
		morphExtent: 300 @ 220! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/15/2017 16:19:24'!
showEverybody
	"Show window for all player's statistics"
	| pl win |
		
	pl _ model currentPlayer.
	pl assets notEmpty
		ifTrue: [
			win _ AllView openOn: model.
			win openInWorld: pasteup.
			win
				setLabel: 'All Players';
				player: pl;
				setWindowColor: pl color;
				startButtons;
				updateEverybody;
				morphPosition: self windowPosition;
				morphExtent: 300 @ 250]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/13/2017 17:12:17'!
showLoan
	"Show window for reducing debt"
	| pl win |
		
	pl _ model currentPlayer.
	win _ LoanView openOn: model.
	win openInWorld: pasteup.
	win
		setLabel: pl identity, '''s Debt';
		player: pl;
		setWindowColor: pl color;
		startButtons;
		morphPosition: self windowPosition;
		morphExtent: 300 @ 220.
				
	model disableAll: {'Pay Loan'}! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/14/2017 13:28:25'!
showOpts
	"Show window for buying assets"
	| pl win |
		
	pl _ model currentPlayer.
	pl priorOptions notEmpty
		ifTrue: [
			win _ OptionsView openOn: model.
			win openInWorld: pasteup.
			win
				setLabel: (pl identity, '''s Shopping');
				player: pl;
				setWindowColor: pl color;
				startButtons;
				morphPosition: self windowPosition;
				morphExtent: 300 @ 220.
			win list updateList.
			model disableAll: {'Purchase'}]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/15/2017 15:13:33'!
showYourself
	"Show window for player's statistics"
	| pl win |
		
	pl _ model currentPlayer.
	pl assets notEmpty
		ifTrue: [
			win _ YouView openOn: model.
			win openInWorld: pasteup.
			win
				setLabel: (pl identity, '''s Status');
				player: pl;
				setWindowColor: pl color;
				startButtons;
				updatePerformance;
				morphPosition: self windowPosition;
				morphExtent: 300 @ 280]! !

!FarmingGame methodsFor: 'windows' stamp: 'dhn 4/10/2019 21:53:38'!
windowPosition
	"Answer the position for a window"
	
	^ seasonsArea morphPosition + (model windowPosition: 50@-300)! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 11/3/2014 12:39'!
boardColor
	"Answer the color of the board itself"
	^Color yellow alpha: 0.5! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 3/22/2012 10:30'!
debtLimit
	"Answer the debt limit for a player to stay in the game."
	^ -50000! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2014 16:55'!
goal
	"Answer the winning net asset goal"
	| normal |
	normal := 250000.
	Game testMode
		ifTrue: [^ normal * 10]
		ifFalse: [^ normal]	"Answer the winning net asset goal"
! !

!FarmingGame class methodsFor: 'operating' stamp: 'dhn 4/18/2019 13:13:05'!
secondSpace
	"Answer the spaces which require a further move"
	
	^ Dictionary new
		at: 8 put: #(#rightTo: #spring);
		at: 12 put: #(#leftTo: #jan2);
		at: 29 put: #(#toMoon: #moon);
		at: 31 put: #(#toFeb4: #feb4);
		at: 35 put: #(#toNov3: #nov3);
	yourself! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 9/2/2017 13:26:24'!
buttonSize
	"Answer the layoutSpec for buttons on the game board"
	
	^ LayoutSpec proportionalWidth: 0.06 proportionalHeight: 0.8! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 8/29/2017 20:01:13'!
cellColor
	"Answer the color for a cell"
	
	^ Color r: 1.0 g: 0.93 b: 0.83! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 8/29/2017 20:14:03'!
includeInNewMorphMenu
	"Instantiate from the menu"
	
	^ true! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 8/29/2017 20:12:41'!
labelAreaHeight

	^ 50! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 8/29/2017 20:11:50'!
start
	"Start the Farming Game"
	| win world |
	
	win _ self new.
	win 
		widgetsColor: win windowColor; "standard color for the window frame"
		color:  (Color r: 0.986 g: 0.986 b: 0.986); "background color"
		model: Farm new;
		buildMorphicWindow;
		setLabel: 'A Board Game'.
		
	win board
		addMorph: win makeTitleArea;
		addMorph: win makeNumbersArea;
		addMorph: win makeOthersArea.
		
	win gameTitle
		contents: 'Farming';
		color: Color lightBrown.
	win model buttons: win makeButtonArea.
	win board
		addMorph: win makeSeasonsArea;
		addMorph: win makeCellsArea.
	win model positionBoardTo: 1.
	win startButtonSet.
	win showSeasons: (win model parseSeasonsAt: 1).
	
	"Now do open it"
	world _ Processor activeProcess animatedUI.
	win morphExtent: (world morphExtent * (0.99@0.8)).
	world addMorph: win position: 0@60.
	win someSubmorphPositionOrExtentChanged.

	win model token: win model setUpToken.
	
	^ win
! !

!FarmingGame class methodsFor: 'documentation' stamp: 'dhn 8/29/2017 20:00:09'!
how
	"
	FarmingGame start.
	"! !

!SellAsset methodsFor: 'operation' stamp: 'dhn 5/3/2019 16:55:37'!
openingFor: anItem
	"Form the opening bid for anItem"
	| listItem item opening |

	listItem _ model assetAuctionList at: anItem.
	item _ (listItem findTokens: '()' keep: ($A to:$Z), ($a to: $z)) first.
	asset _ model currentPlayer assets at: (Farm assetOption at: item)
		ifAbsent: [^ 'No such asset named ', item].
	opening _ asset class price * asset class lotQuantity // 2.
	self currentBid: opening.
	currentBidder _ model class bankName.
	chant _ OrderedCollection new.
	chant addFirst: (String streamContents: [:string |
		string
			nextPutAll: 'The opening bid for ';
			nextPutAll: item;
			nextPutAll: ' by ';
			nextPutAll: model class bankName;
			nextPutAll: ' will be for ';
			nextPut: $$;
			nextPutAll: opening printStringWithCommas;
			nextPutAll: ' (half the list price).'; newLine]).
	self showChant! !

!SellAsset methodsFor: 'operation' stamp: 'dhn 5/3/2019 20:11:15'!
update: aSymbol
	super update: aSymbol.
	aSymbol == #assetAuctionList
		ifTrue: [self halt].! !

!FarmingView methodsFor: 'dropping/grabbing' stamp: 'dhn 9/7/2017 12:18:32'!
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^self "Grab me"! !

!FarmingView methodsFor: 'dropping/grabbing' stamp: 'dhn 9/7/2017 12:18:32'!
justDroppedInto: newOwnerMorph event: anEvent 
	"This message is sent to a dropped morph after it has been dropped on -- and been accepted by -- a drop-sensitive morph"
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^super justDroppedInto: newOwnerMorph event: anEvent ! !

!FarmingView methodsFor: 'dropping/grabbing' stamp: 'dhn 9/7/2017 12:18:32'!
justGrabbedFrom: formerOwner
	"The receiver was just grabbed from its former owner and is now attached to the hand."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."! !

!FarmingView methodsFor: 'dropping/grabbing' stamp: 'dhn 9/7/2017 12:18:32'!
wantsToBeDroppedInto: aMorph
	"Return true if it's okay to drop the receiver into aMorph. This check is symmetric to #wantsDroppedMorph:event: to give both parties a chance of figuring out whether they like each other."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^true! !

!FarmingView methodsFor: 'initialization' stamp: 'dhn 9/7/2017 12:18:32'!
removeWindowMenu
	"Remove the button in the title bar which brings up the window menu"
	
	(self findDeepSubmorphThat: [:s | s balloonText = 'window menu'] ifAbsent: [^ nil]) delete! !

!FarmingView class methodsFor: 'class initialization' stamp: 'dhn 9/7/2017 12:18:32'!
open: aModel label: aString
	"Answer a view on aModel"
	|  window |
	
	window _ self new.
	window
		model: aModel;
		buildMorphicWindow.
	aString ifNotNil: [ window setLabel: aString ].
	^ window! !

!FarmingView class methodsFor: 'class initialization' stamp: 'dhn 9/8/2017 19:58:36'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel label: ''.
	win removeWindowMenu.
	
	^ win
! !

!FarmingView class methodsFor: 'class initialization' stamp: 'dhn 9/7/2017 12:18:32'!
viewPosition
	"Answer the basic position for instances of this class"
	
	^ 200@-50! !

!AllView methodsFor: 'termination' stamp: 'dhn 9/15/2017 16:08:04'!
ack
	"Acknowledge what is in the text pane and close the receiver"
	
	self delete! !

!AllView methodsFor: 'termination' stamp: 'dhn 9/15/2017 16:08:04'!
closeBoxHit

	super closeBoxHit! !

!AllView methodsFor: 'termination' stamp: 'dhn 9/15/2017 16:08:04'!
endIt
	"Close the receiver"
	
	self delete! !

!AllView methodsFor: 'initialization' stamp: 'dhn 3/31/2019 12:01:18'!
buildMorphicWindow
	"Lay out the window for player status"
	
	self layoutMorph beColumn.
			
	buttonArea _ (LayoutMorph newRow)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.15
			minorDirectionPadding: #center).
	buttonArea
		name: #buttons;
		padding: #center.

	textPane _ (TextModelMorph
		withModel: (TextModel withText: '')) 	"note the different model specification"
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: 'player''s list'. 	"give the TextModelMorph a name which will appear in the halos"
	textPane 
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.85
			minorDirectionPadding: #center).

	layoutMorph
		addMorph: textPane;
		addMorph: buttonArea! !

!AllView methodsFor: 'initialization' stamp: 'dhn 9/15/2017 16:08:04'!
startButtons
	"Set the button for acknowledging an option"
	
	ackButton _ GameButtonMorph label: 'OK' action: #ack state: true model: self.
	ackButton 
		morphExtent: 70@20;
		setBalloonText: 'acknowledge receipt'.

	buttonArea
		removeAllMorphs;
		addMorph: ackButton;
		padding: #center.
! !

!AllView methodsFor: 'accessing' stamp: 'dhn 9/15/2017 16:08:04'!
player: anObject
	"Set the value of player"
	
	player _ anObject! !

!AllView methodsFor: 'accessing' stamp: 'dhn 9/15/2017 16:13:08'!
reportAllPlayers
	"Answer a report on all players"
	
	^ String streamContents: [:str |
		model players
			do: [:pl | str newLine; 
				nextPutAll: pl identity, ':'; newLine;
				nextPutAll: pl years asString; 
				nextPutAll: ' years as a farmer'; newLine; 
				nextPutAll: '$' , (pl netAssets roundTo: 1) printStringWithCommas; 
				nextPutAll: ' net assets'; newLine;
				nextPutAll: pl priorOptions size asString;
				nextPutAll: ' options held'; newLine]]! !

!AllView methodsFor: 'accessing' stamp: 'dhn 9/15/2017 16:11:43'!
updateEverybody
	"Show the latest status of all players"
	
	textPane model actualContents: self reportAllPlayers ! !

!AllView class methodsFor: 'class initialization' stamp: 'dhn 9/15/2017 16:10:42'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
	
	aModel when: #itemChange send: #updateEverybody to: win.
	aModel when: #deleteOpenWindows send: #endIt to: win.
	
	^ win
! !

!AssetView methodsFor: 'operating' stamp: 'dhn 9/13/2017 10:57:33'!
assetItem
	"Answer the value of assetItem"

	assetItem ifNil: [assetItem _ 0]. 	"nil is unacceptable during model initialization"
	^ assetItem! !

!AssetView methodsFor: 'operating' stamp: 'dhn 9/13/2017 11:22:59'!
assetItem: anObject
	"Set the value of assetItem"
	
	(assetItem _ anObject) ifNotNil: [
	anObject ~= 0
		ifTrue: [
			assetReport _ self reportFor: (self class statusList at: anObject)]
		ifFalse: [
			assetReport _ '']].
	textPane model actualContents: assetReport.
	self changed: #assetItem 	"makes deselection of the list happen"! !

!AssetView methodsFor: 'operating' stamp: 'dhn 9/13/2017 10:56:47'!
assetList
	"Answer the asset list for a player"
	
	^ self class statusList! !

!AssetView methodsFor: 'operating' stamp: 'dhn 9/14/2017 15:16:50'!
reportFor: aName
	"Answer the status report for anAsset"
	| property asset col |
	
	property _ player assets at: aName ifAbsent: [^ 'No such asset named ', aName].
	asset _ self class translate: aName.
	col _ (player harvests) select: [:ea | ea assetName = asset].
	
	^ String streamContents: [:str |
		str 
			nextPutAll: property description,':'; newLine;
			nextPutAll: (property reportAsAssetFor: player); newLine.
		col ifNotEmpty: [
			col do: [:ea | 
				ea enabled ifFalse: [str nextPutAll: ea desc, ' - done.'; newLine]]]]! !

!AssetView methodsFor: 'operating' stamp: 'dhn 9/18/2017 15:53:44'!
updateStatus
	"Show the latest status of the selected asset"

	assetItem isZero 
		ifFalse: [
			assetReport _ self reportFor: (self class statusList at: assetItem).
			textPane model actualContents: assetReport]! !

!AssetView methodsFor: 'initialization' stamp: 'dhn 9/13/2017 10:59:32'!
buildMorphicWindow
	"Lay out the window for asset status"
	| rightPane |
	
	self layoutMorph beRow.
	list _ (PluggableListMorph
		model: self
		listGetter: #assetList
		indexGetter: #assetItem
		indexSetter: #assetItem:
		mainView: self
		menuGetter: nil
		keystrokeAction: nil)
			name: #assets.
			
	buttonArea _ (LayoutMorph newRow)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.15
			minorDirectionPadding: #center).
	buttonArea
		name: #buttons;
		padding: #center.

	textPane _ (TextModelMorph
		withModel: (TextModel withText: '')) 	"note the different model specification"
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: 'asset status'. 	"give the TextModelMorph a name which will appear in the halos"
	textPane 
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.85
			minorDirectionPadding: #center).

	rightPane _ LayoutMorph newColumn.
	rightPane
		name: 'right pane';
		addMorph: textPane;
		addMorph: buttonArea.
	
	self layoutMorph
		addMorph: list proportionalWidth: 0.35;
		addAdjusterAndMorph: rightPane layoutSpec: (LayoutSpec useAll)	
! !

!AssetView methodsFor: 'initialization' stamp: 'dhn 9/13/2017 10:43:31'!
startButtons
	"Set the button for acknowledging an asset status report"
	| btn |
	
	btn _ GameButtonMorph label: 'Cancel' action: #endIt state: true model: self.
	btn 
		morphExtent: 70@20;
		setBalloonText: 'quit'.

	buttonArea
		removeAllMorphs;
		addMorph: btn;
		padding: #center.
! !

!AssetView methodsFor: 'termination' stamp: 'dhn 9/12/2017 20:55:38'!
closeBoxHit

	super closeBoxHit! !

!AssetView methodsFor: 'termination' stamp: 'dhn 9/13/2017 11:36:23'!
endIt
	"Close the receiver"
	
	self delete! !

!AssetView methodsFor: 'access' stamp: 'dhn 9/13/2017 10:46:58'!
player: anObject
	"Set the value of player"
	
	player _ anObject! !

!AssetView class methodsFor: 'class initialization' stamp: 'dhn 9/14/2017 15:27:25'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
			
	aModel when: #itemChange send: #updateStatus to: win.
	aModel when: #deleteOpenWindows send: #endIt to: win.
	
	^ win
! !

!AssetView class methodsFor: 'class initialization' stamp: 'dhn 9/13/2017 10:55:29'!
statusList
	"Answer the list of assets in order suitable for the list in the window"
	
	^ #('Hay' 'Corn' 'Wheat' 'Apples' 'Cherries' 'CattleOnFarm' 'Ahtanum' 'Rattlesnake' 'Cascade' 'Toppenish' 'Tractor' 'Harvester')! !

!AssetView class methodsFor: 'operation' stamp: 'dhn 9/12/2017 15:32:57'!
translate: aName
	"Answer a name suited for status reporting, translated from aName"
	
	{'CattleOnFarm'. 'Ahtanum'. 'Rattlesnake'. 'Cascade'. 'Toppenish'}
		detect: [:a | a = aName] ifNone: [^ aName].
	^ 'Livestock'
! !

!DrawView methodsFor: 'termination' stamp: 'dhn 4/22/2019 13:29:40'!
ack
	"Acknowledge what is in the text pane and close the receiver"

	model currentPlayer priorOptions: model currentPlayer options copy.
	model optionDrawn: false.
	model triggerEvent: #optionDrawn.
	model triggerEvent: #itemChange.
	self delete! !

!DrawView methodsFor: 'termination' stamp: 'dhn 9/10/2017 20:13:44'!
closeBoxHit

	super closeBoxHit! !

!DrawView methodsFor: 'termination' stamp: 'dhn 9/10/2017 17:05:16'!
endIt
	"Close the receiver"
	
	self delete! !

!DrawView methodsFor: 'initialization' stamp: 'dhn 9/15/2017 14:45:20'!
buildMorphicWindow
	"Lay out the window for the drawn option"
	
	self layoutMorph beColumn.
			
	buttonArea _ (LayoutMorph newRow)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.15
			minorDirectionPadding: #center).
	buttonArea
		name: #buttons;
		padding: #center.

	textPane _ (TextModelMorph
		withModel: (TextModel withText: '')) 	"note the different model specification"
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: 'option description'. 	"give the TextModelMorph a name which will appear in the halos"
	textPane 
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.85
			minorDirectionPadding: #center).

	layoutMorph
		addMorph: textPane;
		addMorph: buttonArea! !

!DrawView methodsFor: 'initialization' stamp: 'dhn 9/12/2017 09:32:37'!
startButtons
	"Set the button for acknowledging an option"
	
	ackButton _ GameButtonMorph label: 'OK' action: #ack state: true model: self.
	ackButton 
		morphExtent: 70@20;
		setBalloonText: 'acknowledge receipt'.

	buttonArea
		removeAllMorphs;
		addMorph: ackButton;
		padding: #center.
! !

!DrawView methodsFor: 'accessing' stamp: 'dhn 9/10/2017 17:57:56'!
details: aString
	"Set the content of the text pane"
	
	textPane model actualContents: aString! !

!DrawView class methodsFor: 'class initialization' stamp: 'dhn 9/10/2017 16:56:28'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
	aModel when: #deleteOpenWindows send: #endIt to: win.
	
	^ win
! !

!OptionsView methodsFor: 'initialization' stamp: 'dhn 9/13/2017 14:18:31'!
buildMorphicWindow
	"Lay out the window for purchases"
	| rightPane |
	
	self layoutMorph beRow.
	list _ (PluggableListMorph
		model: self
		listGetter: #optionsList
		indexGetter: #optionsItem
		indexSetter: #optionsItem:
		mainView: self
		menuGetter: nil
		keystrokeAction: nil)
			name: #catalog.
			
	buttonArea _ (LayoutMorph newRow)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.15
			minorDirectionPadding: #center).
	buttonArea
		name: #buttons;
		padding: #center.

	textPane _ (TextModelMorph
		withModel: (TextModel withText: '')) 	"note the different model specification"
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: 'item description'. 	"give the TextModelMorph a name which will appear in the halos"
	textPane 
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.85
			minorDirectionPadding: #center).

	rightPane _ LayoutMorph newColumn.
	rightPane
		name: 'right pane';
		addMorph: buttonArea;
		addMorph: textPane.
	
	self layoutMorph
		addMorph: list proportionalWidth: 0.35;
		addAdjusterAndMorph: rightPane layoutSpec: (LayoutSpec useAll)	
! !

!OptionsView methodsFor: 'initialization' stamp: 'dhn 9/17/2016 10:20:02'!
startButtons
	"Set the buttons for buying assets"
	
	buyButton _ GameButtonMorph label: 'Buy' action: #buy state: false model: self.
	buyButton 
		morphExtent: 70@20;
		setBalloonText: 'Make the purchase.'.
		
	cancelButton _ GameButtonMorph label: 'Cancel' action: #endIt state: true model: self.
	cancelButton 
		morphExtent: 70@20;
		setBalloonText: 'Forget about shopping for now.'.

	buttonArea
		removeAllMorphs;
		addMorph: buyButton;
		addMorph: cancelButton;
		padding: #center.
! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/14/2017 15:12:22'!
buy
	"Purchase an asset"
	| key method amt |
	
	(model seasonAt: player position) enabled
		ifTrue: [self buyButton: false] 		"can buy only in Winter"
		ifFalse: [
			key _ self optionsList at: self optionsItem.
			method _ self class optionMethod at: key.
			amt _ (Smalltalk classNamed: key) lotQuantity.
			model perform: method withArguments: {amt}.
	
			"remove option from player"
			player options: (self optionsList remove: key; yourself).
			player priorOptions: player options copy.
			model triggerEvent: #itemChange.
	
			"put the option in the 'discard pile' "
			model exercisedOptions add: key.
	
			"remove option from the shopping window list"
			list updateList.
	
			"de-select the list in the shopping window"
			self optionsItem: 0.
	
			"disable the 'Buy' button"
			self buyButton: false.
	
			"update the text pane"
			self details]! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/10/2017 15:22:04'!
buyButton: aBool
	"Change buy button state according to aBool"
	
	aBool
		ifTrue: [
			(model seasonAt: model currentPlayer position) enabled
				ifFalse: [buyButton enableButton]]
		ifFalse: [buyButton disableButton]! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/14/2017 13:26:01'!
details
	"Set the content of the text pane"
	
	textPane model actualContents: 
		(player priorOptions
			ifEmpty: ['']
			ifNotEmpty: [self optionsReport])! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/14/2017 09:41:12'!
getList
	"Update the list of options"
	
	self optionsItem: 0.
	list updateList! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/8/2017 20:15:42'!
list
	"Answer the value of list"
	
	^ list! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/8/2017 20:16:32'!
list: aCollection
	"Set the value of list"
	
	list _ aCollection! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/13/2017 17:06:23'!
player: anObject
	"Set the value of player"
	
	player _ anObject! !

!OptionsView methodsFor: 'termination' stamp: 'dhn 9/13/2017 16:00:25'!
closeBoxHit

	model enableAll: {'Purchase'}.
	super closeBoxHit! !

!OptionsView methodsFor: 'termination' stamp: 'dhn 9/13/2017 16:00:41'!
endIt
	"Close the receiver"
	
	model enableAll: {'Purchase'}.
	self delete! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:13:20'!
optionsItem
	"Answer the value of optionsItem"

	optionsItem ifNil: [optionsItem _ 0]. 	"nil is unacceptable during model initialization"
	^ optionsItem! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/14/2017 12:00:01'!
optionsItem: anObject
	"Set the value of optionsItem and optionsReport"
	| key option enab |
	
	(optionsItem _ anObject) ifNotNil: [
	anObject ~= 0
		ifTrue: [
			key _ self optionsList at: anObject.
			option _ self class optionsDesc at: key.
			optionsReport _ self optionsReport: key.
			option singleOwner not
				ifTrue: [enab _ true]
				ifFalse: [enab _ option owner isNil]]
		ifFalse: [
			optionsReport _ ''.
			enab _ false].
		self buyButton: enab].
	textPane model actualContents: optionsReport.
	self changed: #optionsItem 	"makes deselection of the list happen"! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/14/2017 13:29:18'!
optionsList
	"Answer the shopping list for a player"
	
	^ (player 
		ifNotNil: [player priorOptions]
		ifNil: [OrderedCollection new])! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:21:40'!
optionsList: aList
	"Set the shopping list for a player"
	
	player options: aList! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/16/2017 20:16:50'!
optionsReport
	"Answer the report on the selected option"

	^ optionsItem > 0
		ifTrue: [self optionsReport: (model class translate: (self optionsList at: optionsItem))]
		ifFalse: ['']! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/17/2017 21:42:41'!
optionsReport: anAsset
	"Show the status of anAsset for shopping purposes"
	
	^ player optionDescription: (model class anotherNameFor: anAsset)! !

!OptionsView class methodsFor: 'class initialization' stamp: 'dhn 9/14/2017 12:00:33'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
			
	aModel when: #optionDrawn send: #getList to: win.
	aModel when: #deleteOpenWindows send: #endIt to: win.
	
	^ win
! !

!OptionsView class methodsFor: 'database' stamp: 'dhn 9/13/2017 16:05:53'!
optionMethod
	"Answer a dictionary of methods which account for the execution of options."
	
	^ Dictionary new
		at: #Tractor put: #tractor:;
		at: #Harvester put: #harvester:;
		at: #Fruit put: #fruit:;
		at: #Grain put: #grain:;
		at: #Hay put: #hay:;
		at: #Livestock put: #livestock:;
		at: #Ahtanum put: #ahtanum:;
		at: #Rattlesnake put: #rattlesnake:;
		at: #Cascade put: #cascade:;
		at: #Toppenish put: #toppenish:;
		yourself! !

!OptionsView class methodsFor: 'database' stamp: 'dhn 9/13/2017 14:15:14'!
optionsDesc
	"Answer a dictionary of things that farmers can purchase."
	
	^ Dictionary new
		at: #Tractor put: Tractor new;
		at: #Harvester put: Harvester new;
		at: #Fruit put: Fruit new;
		at: #Grain put: Grain new;
		at: #Hay put: Hay new;
		at: #Livestock put: Livestock new;
		at: #Ahtanum put: Ahtanum new;
		at: #Rattlesnake put: Rattlesnake new;
		at: #Cascade put: Cascade new;
		at: #Toppenish put: Toppenish new;
		yourself! !

!YouView methodsFor: 'termination' stamp: 'dhn 9/15/2017 14:44:00'!
ack
	"Acknowledge what is in the text pane and close the receiver"
	
	self delete! !

!YouView methodsFor: 'termination' stamp: 'dhn 9/15/2017 14:34:54'!
closeBoxHit

	super closeBoxHit! !

!YouView methodsFor: 'termination' stamp: 'dhn 9/15/2017 14:34:54'!
endIt
	"Close the receiver"
	
	self delete! !

!YouView methodsFor: 'initialization' stamp: 'dhn 9/15/2017 14:44:33'!
buildMorphicWindow
	"Lay out the window for player status"
	
	self layoutMorph beColumn.
			
	buttonArea _ (LayoutMorph newRow)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.15
			minorDirectionPadding: #center).
	buttonArea
		name: #buttons;
		padding: #center.

	textPane _ (TextModelMorph
		withModel: (TextModel withText: '')) 	"note the different model specification"
			askBeforeDiscardingEdits: false;	"discard changes to the text"
			name: 'option description'. 	"give the TextModelMorph a name which will appear in the halos"
	textPane 
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.85
			minorDirectionPadding: #center).

	layoutMorph
		addMorph: textPane;
		addMorph: buttonArea! !

!YouView methodsFor: 'initialization' stamp: 'dhn 9/15/2017 14:34:54'!
startButtons
	"Set the button for acknowledging an option"
	
	ackButton _ GameButtonMorph label: 'OK' action: #ack state: true model: self.
	ackButton 
		morphExtent: 70@20;
		setBalloonText: 'acknowledge receipt'.

	buttonArea
		removeAllMorphs;
		addMorph: ackButton;
		padding: #center.
! !

!YouView methodsFor: 'accessing' stamp: 'dhn 9/15/2017 14:36:00'!
player: anObject
	"Set the value of player"
	
	player _ anObject! !

!YouView methodsFor: 'accessing' stamp: 'dhn 9/15/2017 14:40:37'!
updatePerformance
	"Show the latest status of the current player"
	
	textPane model actualContents: player reportYourself ! !

!YouView class methodsFor: 'class initialization' stamp: 'dhn 9/15/2017 14:46:49'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
	
	aModel when: #itemChange send: #updatePerformance to: win.
	aModel when: #deleteOpenWindows send: #endIt to: win.
	
	^ win
! !

!FarmAsset methodsFor: 'operating' stamp: 'dhn 9/17/2017 16:43:54'!
assetValue
	^self class price * (self quantity / 2)! !

!FarmAsset methodsFor: 'operating' stamp: 'dhn 9/17/2017 20:36:33'!
forAssetAuction
	"Answer the description of the receiver for the asset auction catalog"

	^ String streamContents: [:str |
		str
			nextPutAll: description;
			nextPut: $(;
			nextPutAll: quantity asString;
			nextPut: $);
			yourself]! !

!FarmAsset methodsFor: 'operating' stamp: 'dhn 9/17/2017 20:36:40'!
forOptionAuction
	"Answer the description of the receiver for the option auction catalog"
	| xlate occurs |

	xlate _ (Farm alternativeTo: self class asString).
	occurs _ owner options occurrencesOf: xlate.
	^ String streamContents: [:str |
		str nextPutAll: xlate.
		occurs > 1
			ifTrue: [
			str
				nextPut: $(;
				nextPutAll: occurs asString;
				nextPut: $)].
		str 	yourself]! !

!FarmAsset methodsFor: 'initialize-release' stamp: 'dhn 9/23/2014 13:18'!
initialize
	super initialize.
! !

!FarmAsset class methodsFor: 'as yet unclassified' stamp: 'dhn 9/23/2014 13:18'!
optionCost
	^ self price * self auctionQuantity! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:35'!
factor
	"Answer the value of factor"

	factor ifNil: [factor := 1].
	^ factor! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/18/2011 10:19'!
factor: anObject
	"Set the value of factor"

	factor := anObject! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:35'!
rate
	"Answer the value of rate"

	rate ifNil: [rate := 0].
	^ rate! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/18/2011 12:46'!
rate: anObject
	"Set the value of rate"

	rate := anObject! !

!Crop methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:14'!
initialize
	super initialize.
! !

!Crop methodsFor: 'operating' stamp: 'dhn 9/15/2017 17:44:49'!
reportAsAssetFor: aPlayer 
	"Answer the status report for a crop"
	| str |
	
	str _ String new writeStream.
	str nextPutAll: (self quantity roundTo: 1) asString;
		nextPutAll: ' acres';	newLine;
		nextPutAll: '$' , self cost asInteger printStringWithCommas;
		nextPutAll: ' = cost'; newLine;
		nextPutAll: '$' , self gross asInteger printStringWithCommas;
		nextPutAll: ' = gross'; newLine;		
		nextPutAll: (self profit: self gross orLoss: self cost); newLine;
		nextPutAll: self factor asString , ' = factor'; newLine;
		nextPutAll: self rate asString , ' = rate per acre'; newLine;
		nextPutAll: self count asString , ' = number of harvests'; newLine;
		nextPutAll: self missed asString , ' = missed harvests'; newLine.
	self count = 0
		ifFalse: [str nextPutAll: ((self quality / self count) printStringFractionDigits: 1), ' = average harvest quality'].
	^ str contents! !

!Crop methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:41:03'!
reset
	self factor: 1.
	self rate: 0.! !

!Crop methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:40:35'!
units
	"Answer the value of units"
	
	^ ' acres'! !

!Crop class methodsFor: 'database' stamp: 'dhn 9/18/2017 18:13:26'!
auctionQuantity
	"Answer the default quantity that can be auctioned"
	^ 10! !

!Crop class methodsFor: 'database' stamp: 'dhn 9/18/2017 18:13:42'!
lotDescription: aString 
	^ self auctionQuantity asString , ' Acres of ' , aString! !

!Crop class methodsFor: 'expense-related' stamp: 'dhn 9/18/2017 15:25:20'!
expense: anExpense for: aPlayer
	"Record  anExpense in aPlayer assets"
	| asset |

	asset _ aPlayer assets detect: [:a | a description = self printString ] ifNone: [].
	asset cost: asset cost + anExpense negated! !

!Crop class methodsFor: 'income-related' stamp: 'dhn 9/18/2017 18:20:07'!
income: aRoll for: aPlayer
	"Record  income from aRoll in aPlayer's crop"
	| yield tale normal |

	aPlayer garnish
		ifTrue: [aPlayer garnishSpiel]
		ifFalse: [
			yield _ self at: aRoll for: self quantity.
			normal _ yield.
			yield > 0
				ifTrue: [
					yield _ 0 max: yield * self factor + (self quantity * self rate).
					self gross: yield + self gross.
					self quality: aRoll + self quality.
					self count: 1 + self count.
					tale _ String streamContents: [:str |
						str
							nextPutAll: 'Crop quality ';
							nextPutAll: aRoll asString;
							nextPutAll: ' for ';
							nextPut: $$;
							nextPutAll: yield asInteger printStringWithCommas;
							nextPutAll: '. Factor ';
							nextPutAll: self factor asString;
							nextPutAll: '. Rate ';
							nextPutAll: self rate asString;
							nextPut: $.; newLine;
							nextPutAll: 'Normally $';
							nextPutAll: normal printStringWithCommas;
							nextPut: $.].
					GamePopUp inform: tale title: self description, ' quantity ', self quantity asString]]! !

!Crop class methodsFor: 'income-related' stamp: 'dhn 10/10/2017 12:27:36'!
income: aRoll from: anAsset for: aPlayer
	"Record  income from aRoll in aPlayer's crop"
	| asset yield tale normal |

	yield _ 0.
	aPlayer garnish
		ifTrue: [aPlayer garnishSpiel]
		ifFalse: [
			asset _ aPlayer assets at: anAsset.
			yield _ self at: aRoll for: asset quantity.
			normal _ yield.
			yield > 0
				ifTrue: [
					yield _ 0 max: yield * asset factor + (asset quantity * asset rate).
					asset gross: yield + asset gross.
					asset quality: aRoll + asset quality.
					asset count: 1 + asset count.
					tale _ String streamContents: [:str |
						str
							nextPutAll: 'Crop quality ';
							nextPutAll: aRoll asString;
							nextPutAll: ' for ';
							nextPut: $$;
							nextPutAll: yield asInteger printStringWithCommas;
							nextPutAll: '. Factor ';
							nextPutAll: asset factor asString;
							nextPutAll: '. Rate ';
							nextPutAll: asset rate asString;
							nextPut: $.; newLine;
							nextPutAll: 'Normally $';
							nextPutAll: normal printStringWithCommas;
							nextPut: $.].
					GamePopUp inform: tale title: asset description, ' quantity ', asset quantity asString.
					aPlayer mgr endTurnCheck]].
		^ yield! !

!Fruit methodsFor: 'initialize-release' stamp: 'dhn 9/18/2011 15:34'!
initialize
	super initialize.
! !

!Fruit methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:22:22'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Fruit'! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/24/2011 21:49'!
at: aRoll for: aQuantity
	"Answer the yield as if looking it up in a table."
	^(self yieldVector at: aRoll) * (aQuantity // 5)! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 14:45'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 5! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/20/2017 14:43:58'!
lotQuantity
	^ 5! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:38:55'!
optionText
	^ 'NEIGHBOR GOES BROKE
5 acres of Fruit
at $5,000 per acre
Total $', self optionCost printStringWithCommas! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/18/2011 12:56'!
price
	"Per acre"
	^5000! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 09:09'!
yieldVector
	^#(2000 3500 6000 9000 13000 17500)! !

!Apples methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 12:10'!
initialize
	super initialize.
	description := 'Apples'! !

!Cherries methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 12:03'!
initialize
	super initialize.
	description := 'Cherries'! !

!Cherries class methodsFor: 'as yet unclassified' stamp: 'dhn 12/7/2011 20:44'!
last
	"Answer the last board position where cherries can be harvested"
	^ 26! !

!Grain methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:34'!
initialize
	super initialize.
! !

!Grain methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:21:55'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Grain'! !

!Grain class methodsFor: 'operating' stamp: 'dhn 9/8/2017 16:43:48'!
at: aRoll for: aQuantity
	"Answer the Grain yield on anAcreage for aRoll."
	| x whole m1 sum |
	
	x _ aQuantity / 20.0.
	whole _ x integerPart.
	m1 _ whole * self yieldM at: aRoll.
	sum _ self yieldV at: aRoll.
	m1 do: [:n | sum _ sum + n].
	(0.0 = x fractionPart) ifTrue: [sum _ sum - (self yieldM at: aRoll) at: 2].
	^ sum roundTo:  1
! !

!Grain class methodsFor: 'operating' stamp: 'dhn 9/8/2017 16:45:03'!
lotQuantity
	^ 10! !

!Grain class methodsFor: 'operating' stamp: 'dhn 9/8/2017 16:44:10'!
optionText
	^ 'NEIGHBOR SELLS OUT
10 acres of Grain
at $2,000 per acre
Total $', self optionCost printStringWithCommas! !

!Grain class methodsFor: 'database' stamp: 'dhn 9/8/2017 16:46:41'!
price
	"Per acre"
	^2000! !

!Grain class methodsFor: 'database' stamp: 'dhn 9/8/2017 16:46:58'!
yieldM
	"In combination with yieldV, used to compute Grain yields without a table. (see at:for:)"
	
	^ #(
	#(700 800)
	#(1500 1500)
	#(2500 2500)
	#(3700 3800)
	#(5200 5300)
	#(7000 7000)
	)! !

!Grain class methodsFor: 'database' stamp: 'dhn 9/8/2017 16:47:13'!
yieldV
	"In combination with yieldM, used to compute Grain yields without a table. (see at:for:)"
	^#(800 1500 2500 3800 5300 7000)! !

!Corn methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 12:02'!
initialize
	super initialize.
	description := 'Corn'! !

!Wheat methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 11:50'!
initialize
	super initialize.
	description := 'Wheat'
! !

!Hay methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 11:58'!
initialize
	super initialize.
	description := 'Hay'! !

!Hay methodsFor: 'operating' stamp: 'dhn 9/15/2014 10:37'!
assetValue
	^self class price * self quantity! !

!Hay methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:21:27'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Hay'! !

!Hay class methodsFor: 'as yet unclassified' stamp: 'dhn 9/24/2011 21:48'!
at: aRoll for: aQuantity
	"Answer the yield as if looking it up in a table."
	^(self yieldVector at: aRoll) * (aQuantity // 10)! !

!Hay class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:01:10'!
lotQuantity
	^ 10! !

!Hay class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:39:43'!
optionText
	^ 'NEIGHBOR SELLS OUT
10 acres of Hay
at $2,000 per acre
Total $', self optionCost printStringWithCommas! !

!Hay class methodsFor: 'as yet unclassified' stamp: 'dhn 9/18/2011 10:57'!
price
	"Per acre"
	^2000! !

!Hay class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 09:00'!
yieldVector
	^#(400 600 1000 1500 2200 3000)! !

!Equipment methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:36:41'!
assetValue
	"Answer the value of the receiver"
	
	^ self class price * self quantity! !

!Equipment methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:37:16'!
reportAsAssetFor: aPlayer
	| str |
	str := String new writeStream.
	str nextPutAll: self quantity asString;
		 nextPutAll: ' each';
		 newLine;
		 nextPutAll: '$' , self cost asInteger printStringWithCommas;
		 nextPutAll: ' = cost';
		 newLine;
		 nextPutAll: '$' , self gross asInteger printStringWithCommas;
		 nextPutAll: ' = gross';
		 newLine;
		 nextPutAll: '$' , self costAvoided asInteger printStringWithCommas;
		 nextPutAll: ' = cost avoided';
		 newLine;
		
		nextPutAll: (self profit: self gross + self costAvoided orLoss: self cost);
		 newLine.
	^ str contents! !

!Equipment methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:37:50'!
reset! !

!Equipment methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:38:54'!
units
	"Answer the value of units"
	
	^ ' each'! !

!Equipment methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:34'!
costAvoided
	"Answer the value of costAvoided"

	costAvoided ifNil: [costAvoided := 0].
	^ costAvoided! !

!Equipment methodsFor: 'accessing' stamp: 'dhn 9/20/2011 21:18'!
costAvoided: anObject
	"Set the value of costAvoided"

	costAvoided := anObject! !

!Equipment methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:16'!
initialize
	super initialize.
! !

!Equipment class methodsFor: 'as yet unclassified' stamp: 'dhn 9/25/2011 15:18'!
at: aRoll for: aQuantity
	"Answer the yield for equipment."
	^0! !

!Equipment class methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 14:48'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 1! !

!Equipment class methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 09:06'!
lotDescription: aString 
	^ self auctionQuantity asString , ' each of a ' , aString! !

!Equipment class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:07:32'!
lotQuantity
	^ 1! !

!Equipment class methodsFor: 'as yet unclassified' stamp: 'dhn 9/18/2011 14:49'!
price
	"Per each"
	^10000! !

!Harvester methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 12:00'!
initialize
	super initialize.
	description := 'Harvester'! !

!Harvester methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:20:40'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Harvester'! !

!Harvester class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 12:27:44'!
optionText
	^ 'EQUIPMENT SALE
old but useable HARVESTER
Total $', self optionCost printStringWithCommas! !

!Tractor methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 11:50'!
initialize
	super initialize.
	description := 'Tractor'! !

!Tractor methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:20:16'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Tractor'! !

!Tractor class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:40:39'!
optionText
	^ 'EQUIPMENT SALE
old but useable TRACTOR
Total $', self optionCost printStringWithCommas! !

!Livestock methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:11'!
initialize
	super initialize.
! !

!Livestock methodsFor: 'as yet unclassified' stamp: 'dhn 9/15/2017 18:03:43'!
reportAsAssetFor: aPlayer
	| str |
	
	str _ String new writeStream.
	str nextPutAll: self quantity asString;
		 nextPutAll: ' head'; newLine;
		 nextPutAll: '$' , self cost asInteger printStringWithCommas;
		 nextPutAll: ' = cost'; newLine;
		 nextPutAll: '$' , self gross asInteger printStringWithCommas;
		 nextPutAll: ' = gross'; newLine;
		 nextPutAll: self factor asString , ' = factor'; newLine;
		 nextPutAll: self yearCount asString , ' = year count'; newLine;
		 nextPutAll: self count asString , ' = number of harvests'; newLine;
		 nextPutAll: self missed asString , ' = missed harvests'; newLine;		
		nextPutAll: (self profit: self gross orLoss: self cost); newLine.
	self count = 0
		ifFalse: [str nextPutAll: (self quality / self count printStringFractionDigits: 1)
					, ' = average harvest quality'].
	^ str contents! !

!Livestock methodsFor: 'accessing' stamp: 'dhn 10/3/2011 11:41'!
reset
	self yearCount: self yearCount - 1.
	self yearCount < 0 ifTrue: [
		self yearCount: 0.
		self factor: 1.
		].! !

!Livestock methodsFor: 'accessing' stamp: 'dhn 9/25/2011 04:56'!
yearCount
	"Answer the value of yearCount"

	yearCount isNil ifTrue: [yearCount := 0].
	^ yearCount! !

!Livestock methodsFor: 'accessing' stamp: 'dhn 9/18/2011 14:05'!
yearCount: anObject
	"Set the value of yearCount"

	yearCount := anObject! !

!Livestock class methodsFor: 'as yet unclassified' stamp: 'dhn 9/24/2011 21:47'!
at: aRoll for: aQuantity
	"Answer the yield as if looking it up in a table."
	^(self yieldVector at: aRoll) * (aQuantity // 10)! !

!Livestock class methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 12:00'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 10! !

!Livestock class methodsFor: 'as yet unclassified' stamp: 'dhn 9/9/2017 16:03:41'!
lotQuantity 

	^ self auctionQuantity! !

!Livestock class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 12:23:48'!
optionText
	^ 'LIVESTOCK AUCTION
10 pregnant cows
at $500 each
Total $', self optionCost printStringWithCommas! !

!Livestock class methodsFor: 'as yet unclassified' stamp: 'dhn 9/18/2011 13:45'!
price
	"Per head"
	^500! !

!Livestock class methodsFor: 'as yet unclassified' stamp: 'dhn 9/19/2011 09:19'!
yieldVector
	^#(1400 2000 2800 3800 5000 7500)! !

!Livestock class methodsFor: 'expense-related' stamp: 'dhn 9/18/2017 16:27:31'!
expense: anExpense for: aPlayer
	"Record  anExpense in aPlayer assets, apportioning according to head count"
	| dix col head |

	"cattle-related assets"
	dix _ aPlayer assets select: [:a | a class inheritsFrom: self].

	"above, with some cattle"
	col _ dix select: [:ea | ea quantity > 0].

	"total head count"
	head _ col inject: 0 into: [:a :c | a + c quantity].

	"apportion according to head count"
	col do: [:ea | ea cost: ea cost + (anExpense negated * ea quantity / head roundTo: 1)]! !

!Livestock class methodsFor: 'income-related' stamp: 'dhn 10/10/2017 12:26:52'!
income: aRoll from: anAsset for: aPlayer
	"Record the effect of harvesting cattle with  aRoll"
	| dix col head yield tale factor total |

	total _ 0.
	aPlayer garnish
		ifTrue: [GamePopUp inform: 'The IRS is garnishing your income.' title: 'Loss of Income']
		ifFalse: [
			"cattle-related assets"
			dix _ aPlayer assets select: [:a | a class inheritsFrom: self].

			"above, with some cattle"
			col _ dix select: [:ea | ea quantity > 0].

			"total head count"
			head _ col inject: 0 into: [:a :c | a + c quantity].

			"determine total income"
			col do: [:each | 
				factor _ each factor. 	"an ivar, same for each"
				yield _ factor * (self at: aRoll for: each quantity).
				total _ total + yield.

			"credit income to each livestock class"
				each gross: each gross + yield.
				each quality: aRoll + each quality.
				each count: 1 + each count].

			tale _ String streamContents: [:str |
				str
					nextPutAll: 'Cow quality ';
					nextPutAll: aRoll asString;
					nextPutAll: ' for ';
					nextPut: $$;
					nextPutAll: (total roundTo: 1) printStringWithCommas;
					nextPutAll: '. Factor ';
					nextPutAll: factor asString; newLine;
					nextPutAll: 'Normally $';
					nextPutAll: (total / factor roundTo: 1)  printStringWithCommas;
					nextPut: $.].
			GamePopUp inform: tale title: 'Livestock quantity ', head asString.
			aPlayer mgr endTurnCheck].

	^ total! !

!CattleOnFarm methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:44:48'!
assetValue
	"Answer the value of the receiver"
	
	^ self class price * self quantity! !

!CattleOnFarm methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:19:47'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'CattleOnFarm'! !

!CattleOnFarm methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:43:57'!
units
	"Answer the value of units"
	
	^ ' head'! !

!CattleOnFarm methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 12:22'!
initialize
	super initialize.
	description := 'Cattle on Farm'! !

!CattleOnFarm class methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 14:46'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 10! !

!CattleOnFarm class methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 09:02'!
lotDescription: aString 
	^ self auctionQuantity asString , ' Head of Cattle on Farm'! !

!CattleOnFarm class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:05:27'!
lotQuantity
	^ 10! !

!CattleOnLease methodsFor: 'initialize-release' stamp: 'dhn 9/8/2017 15:21:14'!
initialize

	super initialize.
	singleOwner _ true.
	where _ ' Ridge'
! !

!CattleOnLease methodsFor: 'operating' stamp: 'dhn 9/15/2017 11:48:27'!
units
	"Answer the value of units"
	
	^ ' head at ', self className! !

!CattleOnLease class methodsFor: 'as yet unclassified' stamp: 'dhn 1/21/2014 10:30'!
lotDescription: aString 
	^ self auctionQuantity asString , ' Head of Cattle and Lease of ', aString, ' Ridge'! !

!CattleOnLease class methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:43'!
price
	"Per head"
	^ 1000! !

!Ahtanum methodsFor: 'initialize-release' stamp: 'dhn 1/23/2014 15:30'!
initialize
	super initialize.
	description := 'Ahtanum', where! !

!Ahtanum methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:16:29'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Ahtanum'! !

!Ahtanum class methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 13:08'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 20! !

!Ahtanum class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:03:29'!
lotQuantity
	^ 20! !

!Ahtanum class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:40:54'!
optionText
	^ 'LEASE Ahtanum Ridge
for lifetime at $10,000 and
buy 20 pregnant cows to stock it
at $500 each
Total $', self optionCost printStringWithCommas! !

!Cascade methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:17:08'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Cascade'! !

!Cascade methodsFor: 'initialize-release' stamp: 'dhn 9/15/2017 12:46:45'!
initialize

	super initialize.
	description _ 'Cascades'! !

!Cascade class methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 13:11'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 40! !

!Cascade class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:04:44'!
lotQuantity
	^ 40! !

!Cascade class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:35:39'!
optionText
	^ 'LEASE Cascade Ridge
for lifetime at $20,000 and
buy 40 pregnant cows to stock it
at $500 each
Total $', self optionCost printStringWithCommas! !

!Rattlesnake methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:18:11'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Rattlesnake'! !

!Rattlesnake methodsFor: 'initialize-release' stamp: 'dhn 1/23/2014 15:31'!
initialize
	super initialize.
	description := 'Rattlesnake', where! !

!Rattlesnake class methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 13:11'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 30! !

!Rattlesnake class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:09:03'!
lotQuantity
	^ 30! !

!Rattlesnake class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:40:23'!
optionText
	^ 'LEASE Rattlesnake Ridge
for lifetime at $15,000 and
buy 30 pregnant cows to stock it
at $500 each
Total $', self optionCost printStringWithCommas! !

!Toppenish methodsFor: 'initialize-release' stamp: 'dhn 1/23/2014 15:31'!
initialize
	super initialize.
	description := 'Toppenish', where! !

!Toppenish methodsFor: 'operating' stamp: 'dhn 5/3/2019 17:19:03'!
listName
	"Answer the string used to identify the sender in lists"
	
	^ 'Toppenish'! !

!Toppenish class methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 13:11'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 50! !

!Toppenish class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:22:50'!
lotQuantity
	^ 50! !

!Toppenish class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:40:31'!
optionText
	^ 'LEASE Toppenish Ridge
for lifetime at $25,000 and
buy 50 pregnant cows to stock it
at $500 each
Total $', self optionCost printStringWithCommas! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 12/14/2011 11:47'!
addOption: anObject
	anObject notNil ifTrue: [self options addFirst: anObject].
! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 8/31/2017 16:59:05'!
appendHistory
	"Add to the end of history"
	
	history addLast: self netAssets! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/19/2017 16:08:22'!
auctionable
	"Answer a list of owned assets and quantities"
	| list subs |
	list := OrderedCollection new.
	assets ifEmpty: [^list].
	Farm assetList
		do: [:each | subs := (Compiler evaluate: (each, ' ', 'subclasses' asSymbol)).
			subs isEmpty
				ifTrue: [(assets at: each) quantity isZero
						ifFalse: [list add: each , '(' , (assets at: each) quantity asString , ')']]
				ifFalse: [(assets at: subs first asString) quantity isZero
						ifFalse: [list add: each , '(' , (assets at: subs first asString) quantity asString , ')']]].
	^ list! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/25/2017 15:07:50'!
cowsOnLeases
	"Answer a collection of cattle numbers on leases"
	| held temp |

	held _ self leasesHeld.
	held isEmpty
		ifTrue: [^ #(0 )]
		ifFalse: [
			temp _ OrderedCollection new.
			held valuesDo: [:item | 
				temp add: (assets at: item value class name) quantity;
				yourself].
			^ temp]! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:39'!
emergencies
	"Answer the value of emergencies"

	emergencies ifNil: [emergencies := 0].
	^ emergencies! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/23/2011 21:00'!
emergencies: anObject
	"Set the value of emergencies"

	emergencies := anObject! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:38'!
garnish
	"Answer the value of garnish"
	garnish ifNil: [garnish := false].
	^ garnish! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/26/2017 11:30:01'!
garnish: aBoolean
	"Set the value of garnish"

	garnish _ aBoolean.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 11/30/2014 17:40'!
harvests
	"Answer the value of harvests"
	^ harvests! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/26/2017 11:50:07'!
leasesHeld
	"Answer the cattle leases held by self"
	| leases |

	leases _ assets select: [:ea | ea class inheritsFrom: CattleOnLease].
	^ leases select: [:each | 0 < (each quantity)].
! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 12/7/2011 16:16'!
offFarm
	"Answer the value of offFarm"
	offFarm ifNil: [offFarm := 0].
	^ offFarm! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 12/7/2011 16:15'!
offFarm: anObject
	"Set the value of offFarm"

	offFarm := anObject! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/10/2011 13:04'!
options
	"Answer the value of options"

	^ options! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/10/2011 13:13'!
options: anOrderedCollection
	"Set the value of options"

	options := anOrderedCollection! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/19/2017 16:06:43'!
playerDebtLimit
	^ FarmingGame debtLimit! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/14/2017 13:20:09'!
priorOptions
	"Answer the value of priorOptions"

	^ priorOptions! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/14/2017 13:21:04'!
priorOptions: anOrderedCollection
	"Set the value of priorOptions"

	priorOptions _ anOrderedCollection! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/19/2017 16:07:22'!
removeOptionAt: aName
	^ options
		remove: aName
		ifAbsent: [self halt];
		yourself! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/15/2017 15:22:29'!
reportYourself
	"Answer the status of the receiver"
	| str exp |
	
	exp _ self outFlow negated.
	str _ String new writeStream.
	str nextPutAll: '$' , self inFlow asInteger printStringWithCommas;
		nextPutAll: ' farm income';
		newLine;
		nextPutAll: '$' , self offFarm asInteger printStringWithCommas;
		nextPutAll: ' off-farm income';
		newLine;
		nextPutAll: '$' , (exp roundTo:  1) printStringWithCommas;
		nextPutAll: ' expense';
		newLine.
	self expenseCount > 0
		ifTrue: [str nextPutAll: '$' , (exp // self expenseCount roundTo:  1) printStringWithCommas;
				nextPutAll: ' average expense';
				newLine].
	exp ~= 0
		ifTrue: [str nextPutAll: (self inFlow / exp printStringFractionDigits: 2);
				nextPutAll: ' = farm income to expense ratio';
				newLine].
	str nextPutAll: '$' , self interestPd asInteger printStringWithCommas;
		nextPutAll: ' interest paid';
		newLine;
		nextPutAll: self paidInterest asString;
		nextPutAll: ' occasions interest was paid';
		newLine.
	self paidInterest = 0
		ifFalse: [str nextPutAll: '$' , (self interestPd / self paidInterest roundTo:  1) printStringWithCommas;
				nextPutAll: ' = average interest payment';
				newLine].
	^ str nextPutAll: self avoidedDebt asString;
		nextPutAll: ' times interest was avoided';
		newLine;
		nextPutAll: self emergencies asString;
		nextPutAll: ' emergency loans obtained';
		newLine;
		nextPutAll: self priorOptions size asString;
		nextPutAll: ' options held';
		newLine;
		nextPutAll: 'Garnished: ';
		nextPutAll: self garnish asString;
		newLine;
		nextPutAll: '$' , (exp / (self years + 1) roundTo:  1) printStringWithCommas;
		nextPutAll: ' average yearly expense';
		newLine;
		nextPutAll: (self turns / (self years + 1) printStringFractionDigits: 1);
		nextPutAll: ' turns per year';
		newLine;
		nextPutAll: self years asString;
		nextPutAll: ' full years farming';
		newLine;
		contents! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 8/31/2017 16:57:40'!
updateHistory
	"Change current history"
	
	history at: history size put: self netAssets! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/26/2017 11:18:14'!
allocateFruitCost: anAmount
	"Allocate anAmount cost for fruit"
	| f1 f2 amt |

	amt _ anAmount // 2.
	f1 _ assets at: #Cherries.
	f1 quantity > 0
		ifTrue: [
			f1 cost: amt + f1 cost.
			self  tally: amt negated].
	f2 _ assets at: #Apples.
	f2 quantity > 0
		ifTrue: [
			f2 cost: amt + f2 cost.
			self  tally: amt negated].
	mgr triggerEvent: #itemChange
! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/25/2017 14:53:41'!
allocateHarvesterLease: anAmount 
	"When a player incurs anAmount for not owning a harvester, parcel
	anAmount out to those who do."
	| col |

	col _ self mgr players select: [:pl | pl ifHarvester].
	col do: [:pl | 
		| machine |
		machine _ pl assets at: #Harvester.
		machine gross: machine gross + (anAmount // col size).
		pl tally: anAmount // col size]! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/25/2017 14:48:43'!
allocateTractorLease: anAmount 
	"When a player incurs anAmount for not owning a tractor, parcel
	anAmount out to those who do."
	| col |

	col _ self mgr players select: [:pl | pl ifTractor].
	col do: [:pl | 
		| machine |
		machine _ pl assets at: #Tractor.
		machine gross: machine gross + (anAmount // col size).
		pl tally: anAmount // col size]! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/26/2017 11:13:51'!
boostWheat: anAmount
	"Account for a boost of anAmount in wheat income"

	(assets at: #Wheat) gross: anAmount + (assets at: #Wheat) gross.
	self tally: anAmount.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/19/2017 16:02:02'!
buyAsset: aString for: aNumber 
	| lot subs |
	self tally: aNumber negated.
	subs := (Smalltalk at: aString asSymbol) subclasses.
	subs isEmpty
		ifTrue: [lot := assets at: aString.
			lot cost: lot cost + aNumber.
			lot quantity: lot quantity + lot class auctionQuantity]
		ifFalse: [subs
				do: [:each | |n|
					n := assets at: each name asString.
					n cost: n cost + aNumber / subs size.
					n quantity: n quantity + each auctionQuantity]]! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/19/2017 16:02:22'!
buyOption: aName for: aNumber 
	self tally: aNumber negated.
	self options addFirst: aName.
! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/26/2017 11:28:00'!
feedBill: anAmount 
	"Account for a feed bill of anAmount per cow"
	| penalty total |

	total _ 0.
	assets do: [:ea | 
		(ea class inheritsFrom: Livestock)
			ifTrue: [total _ total + ea quantity]].
	^ total > 0
		ifTrue: [
			penalty _ anAmount * total.
			self tally: penalty.
			mgr triggerEvent: #itemChange.
			penalty]
		ifFalse: [0]! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/26/2017 11:28:59'!
fertilizer: aRate
	"Account for fertilizer at aRate per acre" 
	| p1 p2 p3 p4 p5 |

	p1 _ aRate * (assets at: #Hay) quantity.
	(assets at: #Hay) cost: p1 negated + (assets at: #Hay) cost.
	p2 _ aRate * (assets at: #Wheat) quantity.
	(assets at: #Wheat) cost: p2 negated / 2 + (assets at: #Wheat) cost.
	p3 _ aRate * (assets at: #Wheat) quantity.
	(assets at: #Corn) cost: p3 negated / 2 + (assets at: #Corn) cost.
	p4 _ aRate * (assets at: #Cherries) quantity.
	(assets at: #Cherries) cost: p4 negated / 2 + (assets at: #Cherries) cost.
	p5 _ aRate * (assets at: #Cherries) quantity.
	(assets at: #Apples) cost: p5 negated / 2 + (assets at: #Apples) cost.
	self tally: (p1 + p2 + p3 + p4 + p5).
	mgr triggerEvent: #itemChange.
	^ 0 	"no further cost allocation is needed" ! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 9/26/2017 12:08:22'!
wireWorms: aRate
	"Account for grain damage of aRate per acre" 
	| p1 p2 ttl |

	p1 _ aRate * (assets at: #Wheat) quantity // 2.
	(assets at: #Wheat) cost: p1 negated + (assets at: #Wheat) cost.
	p2 _ aRate * (assets at: #Corn) quantity // 2.
	(assets at: #Corn) cost: p2 negated + (assets at: #Corn) cost.
	self tally: (ttl _ p1 + p2).
	mgr triggerEvent: #itemChange.
	^ ttl! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:09:57'!
bumpWheat: aRate 
	"Change the rate for harvesting wheat by aRate per acre"

	(assets at: #Wheat) rate: aRate + (assets at: #Wheat) rate.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:19:52'!
doubleCorn
	"Increase the factor for harvesting corn"

	(assets at: #Corn) factor: 2 * (assets at: #Corn) factor.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:02:58'!
doubleHay
	"Increase the factor for hay"

	(assets at: #Hay) factor: 2 * (assets at: #Hay) factor.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 8/31/2017 15:32:48'!
doubledString
	"Answer the string signifying whether the market is doubled for the receiver"
	| mkt |
	
	mkt _ (mgr seasonAt: self position) desc asSymbol.
	markets
		ifNil: [^ '']
		ifNotNil: [^ (markets at: mkt ifAbsent: [^ '']) > 1 ifTrue: ['(doubled)'] ifFalse:['']]! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:25:54'!
emergencyLoan
	"Account for an emergency loan"
	| loan str |

	str _ String new writeStream.
	str nextPutAll: self identity;
		nextPutAll: ' is out of money.'; newLine;
		nextPutAll: self identity;
		nextPutAll: ' will receive $4,000 cash and a bank note for $5,000.'.
	GamePopUp inform: str contents title: 'Emergency Loan'.
	loan _ 5000 negated.
	self debt: loan + self debt.
	self interestPd: 1000 + self interestPd.
	self paidInterest: 1 + self paidInterest.
	self emergencies: 1 + self emergencies.
	mgr triggerEvent: #itemChange.
	^ (loan + 1000) negated! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 4/17/2019 13:03:39'!
goBackToJan2
	"Move the token back to Jan 2"
	
	GamePopUp inform: 'You will now go back to January Week 2.' title: 'January Week 2'.
	self mgr token slideLeft: self mgr currentPlayer position to: (Farm specialSpaces at: #jan2)! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 10/10/2017 11:38:40'!
goDirectly: aPosition 
	"Move backward to Jan 2"

	self goBackToJan2.
	self mgr disableAll: {'Move'. 'Expense'. 'Fate'. 'Harvest'}! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:30:50'!
halveCherries: aRate 
	"Reduce cherry harvest by aRate"

	(assets at: #Cherries) factor: aRate * (assets at: #Cherries) factor.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:37:18'!
halveCows
	"Adjust the factor for harvesting cattle"

	assets do: [:each | 
		(each class inheritsFrom: Livestock)
			ifTrue: [each factor: 0.5 * each factor]].
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 10:03:03'!
halveHay
	"Change the factor for hay"

	(assets at: #Hay) factor: 0.5 * (assets at: #Hay) factor.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:38:07'!
halveHay: anObject 
self halt: 'how did we get here?'.
	(assets at: #Hay)
		factor: 0.5 * (assets at: #Hay) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/20/2017 13:04:06'!
harvest: anAsset 
	"Answer the result of harvesting anAsset"
	| bone |

	harvesting _ anAsset.
	bone _ DieMorph new openInWorld: mgr world.
	bone model: mgr.
	self die: bone.
	bone adjustTo: mgr token.
	bone showEffect: bone class faces shuffled! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/20/2017 18:26:37'!
harvest: anAsset then: aSymbol
	"Answer the result of harvesting anAsset"
	| bone |

	harvesting _ anAsset.
	bone _ DieMorph new openInWorld: mgr world.
	bone model: mgr.
	self die: bone.
	bone adjustTo: mgr token.
	bone showEffect: bone class faces shuffled then: aSymbol! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:39:54'!
hasFruit
self halt: 'how did we get here?'.
	self ifFruit
		ifTrue: [self tally: 500 negated.
			(assets at: #Cherries)
				cost: 250 + (assets at: #Cherries) cost.
			(assets at: #Apples)
				cost: 250 + (assets at: #Apples) cost.
			^ true].
	^ false! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:40'!
hasHarvester
	self ifHarvester
		ifTrue: [self tally: 1000.
			(assets at: #Harvester)
				gross: 1000 + (assets at: #Harvester) gross.
			^ true].
	^ false! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:57'!
ifCows
	| q1 q2 |
	q1 := self cowsOnLeases.
	q2 := (assets at: #CattleOnFarm) quantity.
	^ 0
		< (q1
				inject: q2
				into: [:a :b | a + b])! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 10:16:35'!
ifCows: anAmount 
	"Account for veterinary expense of anAmount"
	| total |

	total _ 0.
	assets do: [:ea | 
		(ea class inheritsFrom: Livestock)
			ifTrue: [total _ total + ea quantity]].
	^ total > 0
		ifTrue: [
			self tally: anAmount.
			anAmount]
		ifFalse: [0]! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:57'!
ifFruit
	^ 0 < (assets at: #Cherries) quantity! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:58'!
ifHarvester
	^ 0 < (assets at: #Harvester) quantity! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:46:28'!
ifHarvester: anAmount 
self halt: 'how did we get here?'.
	self IfHarvester
		ifTrue: [self tally: anAmount.
			(assets at: #Harvester)
				gross: anAmount + (assets at: #Harvester) gross]! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:58'!
ifTractor
	^ 0 < (assets at: #Tractor) quantity! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:47:55'!
interest: aRate
	"Answer the amount of interest = debt * aRate"
	| int |
	
	0 > self debt
		ifTrue: [
			int _ (aRate * self debt negated) roundTo:  1.
			self tally: int negated.
			self paidInterest: 1 + self paidInterest.
			self interestPd: int + self interestPd]
		ifFalse: [
			int _ 0.
			self avoidedDebt: 1 + self avoidedDebt].
	mgr triggerEvent: #itemChange.
	^ int negated! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/26/2017 11:56:25'!
missedCattleHarvest
	"Record that a harvest was missed for livestock assets"

	assets do: [:each | 
		(each class inheritsFrom: Livestock)
			ifTrue: [each missed: each missed + 1]].
	mgr triggerEvent: #itemChanged! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 11/30/2014 15:24'!
reset
	garnish := false.
	passedGo := false.
	harvests do: [:ea | ea enabled: true].
	self assets do: [:ea | ea reset].
! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/4/2017 16:13:29'!
salary
	"Account for and record the salary"
	
	GamePopUp inform: 'You will receive an annual salary of $5,000.' title: 'Salary'.
	self 
		tally: 5000;
		offFarm: 5000 + self offFarm;
		reset.
	self history add: self netAssets.
	self triggerEvent: #itemChange
! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/1/2017 09:44:03'!
spaceEffect
	"Answer the value of spaceEffect"

	^ spaceEffect! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/1/2017 09:09:32'!
spaceEffect: anObject
	"Set the value of spaceEffect"
	
	spaceEffect _ anObject
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:15:36'!
calfWeights: aParm
	"Record the effect of aParm increase in livestock income over the next 2 years"
	| eachHerd |

	eachHerd _ assets select: [:ea | ea class inheritsFrom: Livestock].
	eachHerd do: [:each | 
		each factor: aParm.
		"yearCount increased by 3 so that factor will be in effect for the NEXT 2 years"
		each yearCount: 3 + each yearCount].
	mgr triggerEvent: #itemChange
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:17:14'!
customHire: anAmount 
	"Collect anAmount from each player who does not have a harvester"
	| cnt ttl |

	(assets at: #Harvester) quantity > 0
		ifFalse: [^ nil].
	cnt _ 0.
	mgr players
		do: [:pl | 
			pl ~= self
				ifTrue: [
					(pl assets at: #Harvester) quantity = 0
						ifTrue: [
							cnt _ cnt + 1.
							pl tally: anAmount negated.
							(pl assets at: #Harvester)
								cost: (pl assets at: #Harvester) cost + anAmount]]].
	ttl _ anAmount * cnt.
	self tally: ttl.
	(assets at: #Harvester) gross: (assets at: #Harvester) gross + ttl.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/25/2017 16:55:58'!
cutworms: anAmount 
	"Allocate anAmount per acre for cutworm damage"
	| a1 a2 |

	a1 _ anAmount * (assets at: #Cherries) quantity // 2.
	a2 _ anAmount * (assets at: #Apples) quantity // 2.
	self allocateFruitCost: a1 + a2! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:18:43'!
disasterPmt: aParm 
	"Allocate a disaster payment of aParm per acre for grain"
	| amt |

	amt _ (assets at: #Wheat) quantity * aParm.

	(assets at: #Wheat) gross: amt / 2 + (assets at: #Wheat) gross.
	(assets at: #Corn) gross: amt / 2 + (assets at: #Corn) gross.

	self tally: amt.
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 10/6/2011 20:31'!
drawExpense: anObject
	^self mgr drawExpense! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:42:11'!
heldCalves: anAmount 
	"Allocate anAmount for holding some calves"
	| q1 q2 eachHerd headCount portion ix |

	q1 _ self cowsOnLeases.
	q2 _ (assets at: #CattleOnFarm) quantity.
	headCount _ q1 inject: q2 into: [:a :b | a + b].
	headCount > 0
		ifTrue: [self tally: anAmount.
			eachHerd _ self leasesHeld add: #CattleOnFarm
							-> (assets at: #CattleOnFarm);
						 yourself.
			portion _ anAmount * ((q1 asOrderedCollection add: q2;
							 yourself) / headCount).
			ix _ 0.
			eachHerd
				do: [:each | each gross: each gross
							+ (portion at: (ix _ ix + 1))]].
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:43:07'!
helens: anObject 
	"Account for Natural Disaster"
	| rolls r amt |

	amt _ 500 * (assets at: #Hay) quantity.
	self tally: amt.
	(assets at: #Hay) gross: amt + (assets at: #Hay) gross.
	rolls _ OrderedCollection new.
	self mgr players
		do: [:pl | 
			pl ~= self
				ifTrue: [
					r _ (1 to: 2) atRandom.
					rolls addLast: r.
					"to facilitate testing"
					r = 1
						ifTrue: [
							amt _ 100 * (pl assets at: #Hay) quantity.
							pl tally: amt negated.
							(pl assets at: #Hay) cost: (pl assets at: #Hay) cost + amt]]].
	mgr triggerEvent: #itemChange.
	^ rolls! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:43:23'!
horseHay: anAmount 
	"Receive anAmount per acre for horse hay"
	| qty gross |

	qty _ (assets at: #Hay) quantity.
	0 < qty
		ifTrue: [
			gross _ anAmount * qty.
			self tally: gross.
			(assets at: #Hay) gross: gross + (assets at: #Hay) gross].
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/25/2017 15:12:33'!
maggotFly: anAmount 
	"Allocate anAmount per fruit acre for maggot fly"
	| q1 q2 c1 c2 |

	q1 _ (assets at: #Cherries) quantity // 2.
	q2 _ (assets at: #Apples) quantity // 2.
	c1 _ anAmount * q1.
	c2 _ anAmount * q2.
	self allocateFruitCost: c1 + c2! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 11:59:48'!
noHarvester: anAmount 
	"Account for whether a player owns a harvester"

	^ 0 < (assets at: #Harvester) quantity
		ifTrue: [
			(assets at: #Harvester) costAvoided: anAmount negated + (assets at: #Harvester) costAvoided.
			mgr triggerEvent: #itemChange.
			0]
		ifFalse: [
			self tally: anAmount.
			(assets at: #Harvester) cost: anAmount negated + (assets at: #Harvester) cost.
			self allocateHarvesterLease: anAmount negated.
			mgr triggerEvent: #itemChange.
			anAmount]! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 12:00:25'!
noTractor: anAmount 
	"Account for whether the receiver has a tractor"
	
	^ 0 < (assets at: #Tractor) quantity
		ifTrue: [
			(assets at: #Tractor) costAvoided: anAmount negated + (assets at: #Tractor) costAvoided.
			mgr triggerEvent: #itemChange.
			0]
		ifFalse: [
			self tally: anAmount.
			(assets at: #Tractor) cost: anAmount negated + (assets at: #Tractor) cost.
			self allocateTractorLease: anAmount negated.
			mgr triggerEvent: #itemChange.
			anAmount]! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 12:02:25'!
oilLease: aParm 
	"Allocate lease payment of aParm per acre from oil company"
	| acres qty delta |

	acres _ 0.
	assets do: [:a | 
		(a class inheritsFrom: Crop)
			ifTrue: [
				qty _ ((a class inheritsFrom: Fruit) or: [a class inheritsFrom: Grain])
					ifTrue: [a quantity // 2]
					ifFalse: [a quantity].
				delta _ aParm * qty.
				a gross: delta + a gross.
				acres _ acres + qty]].
	mgr triggerEvent: #itemChange.

	self tally: aParm * acres! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 12:05:20'!
slaughterCows: aParm
	"Slaughter all livestock at farm"

	(assets at: #CattleOnFarm) quantity: 0.
	mgr triggerEvent: #itemChange
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/25/2017 16:19:19'!
truckerStrike: aParm 
	"Allocate the cost of a strike on fruit at aParm per acre"
	| amt1 amt2 |

	amt1 _ aParm * (assets at: #Cherries) quantity // 2.
	amt2 _ aParm * (assets at: #Apples) quantity // 2.
	self allocateFruitCost: amt1 + amt2
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 12:07:20'!
uncleBert: aParm 
	"Answer whether player wishes to inherit hay"
	
	(PopUpMenu 
		confirm: 'It will cost $10,000
Do you want to inherit?')
		ifTrue: [| h |
			self tally: 10000 negated.
			h _ assets at: #Hay.
			"inherited hay comes cheaper"
			h cost: 10000 + h cost.
			h quantity: 10 + h quantity.
			mgr triggerEvent: #itemChange].
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 9/26/2017 12:07:50'!
wheatWeeds: aParm 
	"Reduce wheat yield by aParm"

	(assets at: #Wheat) factor: aParm * (assets at: #Wheat) factor.
	mgr triggerEvent: #itemChange
! !

!Farmer methodsFor: 'income-related' stamp: 'dhn 9/19/2017 16:02:55'!
garnishSpiel
	GamePopUp inform: 'The IRS is garnishing your income.' title: 'Loss of Income'.
! !

!Farmer methodsFor: 'income-related' stamp: 'dhn 9/19/2017 16:03:43'!
harvestEnabled
	"Answer true if player has not previosly harvested this season and 	owns the asset."
	| season asset caseA caseB sum |
	
	season _ self mgr seasonAt: self position.
	
	caseA _ season desc = 'WINTER'
		ifTrue: [^ false]
		ifFalse: [(harvests detect: [:ea | ea desc = season desc] ifNone: [self halt]) enabled].
		
	caseB _ true.
	season assetName
		ifNotNil: [:name | 
			asset _ assets
						at: name
						ifAbsent: [
							assets values
								select: [:ea | ea class inheritsFrom: (Smalltalk at: name asSymbol)]].
			(asset class inheritsFrom: Collection)
				ifTrue: [sum _ 0.
					asset
						do: [:ea | sum _ sum + ea quantity].
					caseB _ 0 < sum]
				ifFalse: [caseB _ 0 < asset quantity]].
			
	^ caseA and: caseB! !

!Farmer methodsFor: 'income-related' stamp: 'dhn 9/19/2017 16:04:13'!
harvested
	"Indicate that the player has harvested this season."
	| sea |
	sea := harvests detect: [:ea | ea desc = (self mgr seasonAt: self position) desc] 
		ifNone: [self halt].
	sea enabled: false! !

!Farmer methodsFor: 'income-related' stamp: 'dhn 9/20/2017 13:17:01'!
harvesting
	"Answer the value of harvesting"

	^ harvesting! !

!Farmer methodsFor: 'income-related' stamp: 'dhn 4/27/2019 20:38:18'!
sellAsset: aString for: aNumber
	"Record the sale of the asset named aString at aNumber price"
	| lot subs |

	self tally: aNumber.
	subs _ (assets at: aString) class subclasses.
	subs isEmpty
		ifTrue: [
			lot _ assets at: aString.
			lot gross: lot gross + aNumber.
			lot quantity: lot quantity - lot class auctionQuantity]
		ifFalse: [subs
				do: [:each | 
					| n |
					n _ assets at: each name asString.
					n gross: n gross + aNumber / subs size.
					n quantity: n quantity - each auctionQuantity]].
	mgr triggerEvent: #itemChange! !

!Farmer methodsFor: 'income-related' stamp: 'dhn 9/19/2017 16:01:25'!
sellOption: aName for: aNumber 
	self tally: aNumber.
	^ self removeOptionAt: aName! !

!Farmer methodsFor: 'initialize-release' stamp: 'dhn 8/31/2017 17:23:55'!
initialize

	FarmerTest isNil
		ifFalse: [identity _ FarmerTest].
	cash _ 5000.
	debt _ 5000 negated.
	assets _ self setUpAssets.
	harvests _ Farm season copy.
	options _ OrderedCollection new.
	history _ OrderedCollection with: self netAssets! !

!Farmer methodsFor: 'initialize-release' stamp: 'dhn 9/17/2017 20:37:27'!
setUpAssets
	"Answer the assets, current and future, of the receiver"

	^ Dictionary new
		at: #Hay put: (Hay new quantity: 10; cost: 20000; owner: self);
		at: #Wheat put: ( Wheat new quantity: 10; cost: 10000; owner: self);
		at: #Corn put: (Corn new quantity: 10; cost: 10000; owner: self);
		at: #Cherries put: (Cherries new owner: self);
		at: #Apples put: (Apples new owner: self);
		at: #CattleOnFarm put: (CattleOnFarm new owner: self);
		at: #Ahtanum put: (Ahtanum new owner: self);
		at: #Rattlesnake put: (Rattlesnake new owner: self);
		at: #Cascade put: (Cascade new owner: self);
		at: #Toppenish put: (Toppenish new owner: self);
		at: #Tractor put: (Tractor new owner: self);
		at: #Harvester put: (Harvester new owner: self);
		yourself
	! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 9/15/2017 11:56:30'!
optionDescription: aString 
	"Report the effect of buying the option named aString"
	| cost down asset |
	
	asset _ self assets at: aString.
	cost _ Compiler evaluate: aString , ' optionCost'.
	down _ cost * 0.2.
	^ String new writeStream
		nextPutAll: (Compiler evaluate: aString , ' optionText'); newLine;
		nextPutAll: 'You have ';
		nextPutAll: asset quantity asString; 
		nextPutAll: asset units; 
		nextPut: $.; newLine; newLine;
		nextPutAll: 'Exercising this option requires $';
		nextPutAll: down asInteger printStringWithCommas;
		nextPutAll: ' cash'; newLine;
		nextPutAll: 'and a loan for $';
		nextPutAll: (cost - down) asInteger printStringWithCommas;
		contents! !

!Farmer class methodsFor: 'as yet unclassified' stamp: 'dhn 3/22/2012 11:13'!
called: aName
	^ self basicNew identity: aName! !

!Farmer class methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2011 17:25'!
goal
	"First Farmer to have this asset value wins the game.."
	^250000! !

!Farmer class methodsFor: 'as yet unclassified' stamp: 'dhn 8/15/2013 09:07'!
moveInterval
	"Answer the amount of time in seconds between moves during animation"
	"Examples: go to Harvest Moon or go back to 2nd week in January"
	^ 0.5! !

!Farmer class methodsFor: 'as yet unclassified' stamp: 'dhn 9/22/2011 19:07'!
test: aString
	FarmerTest := aString.! !

!FarmSeason methodsFor: 'accessing' stamp: 'dhn 9/10/2017 15:03:23'!
enabled
	"Answer the value of enabled"

	enabled ifNil: [enabled _ false].
	^ enabled! !

!FarmSeason methodsFor: 'accessing' stamp: 'dhn 9/10/2017 15:04:15'!
enabled: anObject
	"Set the value of enabled"
	
	enabled _ anObject! !

!Field methodsFor: 'as yet unclassified' stamp: 'dhn 10/21/2014 20:11'!
describe
	"Answer a string which describes the field"
	^ String new writeStream
		nextPutAll: self heading;
		nextPutAll: self description;
		contents	! !

!Field methodsFor: 'as yet unclassified' stamp: 'dhn 8/30/2017 18:58:29'!
describeMarket
	"Answer a string containing the market name"
	^ label, Character newLine	! !

!Field methodsFor: 'as yet unclassified' stamp: 'dhn 8/29/2017 21:26:00'!
heading: string1 with: string2
	"Set the heading to string1, newLine, string2"
	| str |
	
	str := String new writeStream.
	str nextPutAll: string1; newLine;
		nextPutAll: string2.
	self heading: str contents! !

!Field methodsFor: 'accessing' stamp: 'dhn 10/20/2014 18:43'!
description
	"Answer the description for the cell of this site"
	^ description! !

!Field methodsFor: 'accessing' stamp: 'dhn 8/29/2017 21:34:55'!
description: anObject
	"Set the description for the cell of this site"
	| str |
	
	str _ String new writeStream.
	str newLine; newLine; nextPutAll: anObject.
	description _ str contents! !

!Field methodsFor: 'accessing' stamp: 'dhn 10/20/2014 18:43'!
heading
	"Answer the short heading describing this site"
	^ heading! !

!Field methodsFor: 'accessing' stamp: 'dhn 10/20/2014 18:43'!
heading: anObject
	"Set the short heading describing this site"
	heading := anObject! !

!Field methodsFor: 'accessing' stamp: 'dhn 8/30/2017 18:54:42'!
label
	"Answer the value of label"

	^ label! !

!Field methodsFor: 'accessing' stamp: 'dhn 8/30/2017 18:55:38'!
label: anObject
	"Set the value of label"

	label _ anObject! !
