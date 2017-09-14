'From Cuis 5.0 of 7 November 2016 [latest update: #3168] on 14 September 2017 at 9:46:24 am'!
'Description Please enter a description for this package'!
!provides: 'Farm' 1 70!
!requires: 'Game' 1 154 nil!
!classDefinition: #Farm category: #'Farm-Model'!
Game subclass: #Farm
	instanceVariableNames: 'availableOptions exercisedOptions listOfOptions optsShown fates drawnFates expenses drawnExpenses payLoanWindow paymentList leases playersList plotWindow moveButton latestPlayer windowCount loanItem loanReport'
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
	instanceVariableNames: 'seasons namesCache numbersArea othersArea seasonsArea'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmingGame class' category: #'Farm-Graphics'!
FarmingGame class
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

!classDefinition: #LoanView category: #'Farm-Graphics'!
FarmingView subclass: #LoanView
	instanceVariableNames: 'textPane cancelButton payButton buttonArea player'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'LoanView class' category: #'Farm-Graphics'!
LoanView class
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
	instanceVariableNames: 'offFarm options drawnOption garnish emergencies harvests markets spaceEffect'
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

!classDefinition: #FarmAuctioneer category: #'Farm-Model'!
ProtoObject subclass: #FarmAuctioneer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Model'!
!classDefinition: 'FarmAuctioneer class' category: #'Farm-Model'!
FarmAuctioneer class
	instanceVariableNames: ''!

!classDefinition: #FarmAuctionList category: #'Farm-Graphics'!
ProtoObject subclass: #FarmAuctionList
	instanceVariableNames: 'optionButton player assetButton showingAssets lot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmAuctionList class' category: #'Farm-Graphics'!
FarmAuctionList class
	instanceVariableNames: ''!

!classDefinition: #FarmPlot category: #'Farm-Graphics'!
ProtoObject subclass: #FarmPlot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmPlot class' category: #'Farm-Graphics'!
FarmPlot class
	instanceVariableNames: ''!

!classDefinition: #FarmRelation category: #'Farm-Graphics'!
ProtoObject subclass: #FarmRelation
	instanceVariableNames: 'lineWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Farm-Graphics'!
!classDefinition: 'FarmRelation class' category: #'Farm-Graphics'!
FarmRelation class
	instanceVariableNames: ''!


!Farm commentStamp: '<historical>' prior: 0!
The model for FarmingGame!

!FarmToken commentStamp: '<historical>' prior: 0!
The game piece for a farmer - a player in the Farming Game.!

!FarmButton commentStamp: '<historical>' prior: 0!
A button which can have its action selector changed.!

!FarmingGame commentStamp: '<historical>' prior: 0!
Manage the visual effects of the Farming Game.

Start the game from the New morph... window or in a workspace do:

	FarmingGame start.

http://farmgame.com/product/woo-single-2/

!

!FarmingView commentStamp: '<historical>' prior: 0!
Abstract class for FarmingGame views!

!AssetView commentStamp: '<historical>' prior: 0!
A FarmingGame view which shows the status of a player's assets.!

!DrawView commentStamp: '<historical>' prior: 0!
A FarmingGame view which shows the option which was drawn.!

!LoanView commentStamp: 'dhn 9/14/2016 10:34:25' prior: 0!
A FarmingGame window which makes it possible for players to reduce debt.!

!OptionsView commentStamp: 'dhn 8/26/2016 16:48:51' prior: 0!
A FarmingGame view which makes it possible for farmers to exercise options.!

!FarmAsset commentStamp: '<historical>' prior: 0!
The model for an asset of the farm.!

!Crop commentStamp: '<historical>' prior: 0!
The model for a crop asset.!

!Fruit commentStamp: '<historical>' prior: 0!
The model for fruit.!

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

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 20:27'!
ahtanum: quantity
	"Lease Ahtanum Ridge for $quantity."
	self lease: 'Ahtanum' for: quantity! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 17:58:22'!
availableOptions
	"Answer the value of availableOptions"

	availableOptions ifNil: [availableOptions := OrderedCollection new].
	^ availableOptions! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 17:58:44'!
availableOptions: anObject
	"Set the value of availableOptions"

	availableOptions := anObject! !

!Farm methodsFor: 'buttons' stamp: 'dhn 9/5/2017 14:38:57'!
buttonsNamed: aCollection
	"Answer the buttons whose labels match those in aCollection"
	| ans btn |
	
	ans _ OrderedCollection new.
	aCollection do: [:x |
		btn _ self buttons submorphs detect: [:b | b label = x] ifNone: [nil].
		btn ifNotNil: [ans add: btn; yourself]].
	^ ans! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 20:28'!
cascade: quantity 
	"Lease Cascade Ridge for $quantity."
	self lease: 'Cascade' for: quantity! !

!Farm methodsFor: 'buttons' stamp: 'dhn 9/5/2017 12:29:59'!
disableAll: aCollection
	"Disable each button in aCollection"
	
	(self buttonsNamed: aCollection) do: [:ea | ea disableButton]! !

!Farm methodsFor: 'buttons' stamp: 'dhn 9/5/2017 12:53:16'!
disabledAll: aCollection
	"Answer true if all buttons in aCollection are disabled"
	| ans |
	
	ans _ true.
	(self buttonsNamed: aCollection) do: [:ea | ans _ ans and: ea enabled not].
	^ ans! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 20:45'!
doAssetAuction
	"Open the window for auctioning assets and leases."
	self auctioneers add: ((FarmAuctioneer new)
		name: 'Asset';
		mgr: self;
		saveButtonState: {'End Turn'};
		showAssetAuction).
	self disableAll: {'Auction'. 'End Turn'}.
! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 20:47'!
doAuction
	"Display the Auction button menu."
	| ans |
	ans := (SelectionMenu fromArray:
	#(	('Sell Your Assets'	            doAssetAuction)
		('Sell Your Options'	            doOptionAuction)
		)) startUpWithCaption: 'Start an Auction'.
	ans ifNotNil: [self perform: ans]! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/8/2017 14:59:36'!
doAug1
	"Move the player to February Week 4 after his landing on August  Week 1."
	
	(self disabledAll: {'Harvest'. 'Expense'})
		ifTrue: [
			GamePopUp inform: 'You will advance to 4th week in February.' title: 'Farming like a Pro'.
			self disableAll: {'End Turn'}.
			token feb4MoveFrom: currentPlayer position]! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/5/2017 12:58:51'!
doJul3
	"Move the player to Harvest Moon after his landing on July Week 3."
	
	self disableAll: {'End Turn'}.
	(self disabledAll: {'Harvest'. 'Expense'})
		ifTrue: [GamePopUp inform: 'You will advance to Harvest Moon.' title: 'Harvest Moon'.
			token moonMove]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 20:46'!
doOptionAuction
	"Open the window for auctioning options."
	self auctioneers add: ((FarmAuctioneer new)
		name: 'Option';
		mgr: self;
		saveButtonState: {'End Turn'};
		showOptionAuction).
	self disableAll: {'End Turn'}.
! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/6/2017 16:37:19'!
doSep1
	"Move the player to November Week 3 after his landing on September Week 1."
	
	(self disabledAll: {'Harvest'. 'Expense'})
		ifTrue: [GamePopUp inform: 'You will advance to 3rd week in November.' title: '3rd week in November'.
			currentPlayer advanceTo: 46;
				 position: 46.
			currentPlayer tally: 1000.
			currentPlayer ifFruit
				ifTrue: [self enableHarvestButtons]
				ifFalse: [| a |
					a := currentPlayer assets at: #Apples.
					a missed: a missed + 1.
					self enableAll: {'End Turn'}].
			self setActionSelectorFor: #Harvest to: {self class harvestNormal}.
			self setActionSelectorFor: #Expense to: {self class expenseNormal}.
			self updatePlayer]! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 9/5/2017 21:19:23'!
doSettings
	"Provide a facility for changing settings"
	| ans |
	
	ans _ (PopUpMenu withCaption: 'Settings' chooseFrom: 'Change the goal of the game\Change test mode').
	ans > 0 ifTrue: [self perform: (#(#setGoal #setTestMode) at: ans)]
! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/1/2017 13:43:33'!
doSpace
	"Do what the space says"
	
	currentPlayer spaceEffect: self whatSpaceSays! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 9/12/2017 08:17:27'!
doStats
	"Display the Stats button menu."
	| ans |
	
	ans _ (SelectionMenu fromArray:
	#(	('Your Assets'	            showAssets)
		('Yourself'	                  showYourself)
		('All Players'                  showEverybody)
		-
		('Progress Graph'          showProgress)
		('Space Histogram'        showSpaceHistogram)
		)) startUpWithCaption: '  Statistics  '.
		
	ans ifNotNil: [self triggerEvent: ans]! !

!Farm methodsFor: 'expense' stamp: 'dhn 10/27/2014 21:05'!
drawExpense
	"Answer an expense card and place it in the discard pile."
	^ self drawCard: (self expenses) discard: (self drawnExpenses).
! !

!Farm methodsFor: 'fates' stamp: 'dhn 9/5/2017 20:08:52'!
drawFate
	"Draw a farmer's fate card, account for it, and place it in the discard pile."
	| assoc |
	
	assoc _ self drawCard: self fates discard: self drawnFates.
	self triggerEvent: #itemChange.
	GamePopUp inform: assoc value title: 'Farmer''s Fate'.
	currentPlayer perform: assoc key key withArguments: {assoc key value}.
	self triggerEvent: #itemChange.
	self disableAll: {'Fate'}.
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'})	ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/10/2017 18:15:53'!
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
	aBoolean ifFalse: [self triggerEvent: #showDraw with: (Compiler evaluate: otb , ' optionText')].
	^ otb! !

!Farm methodsFor: 'expense' stamp: 'dhn 10/12/2011 21:54'!
drawnExpenses
	"Answer the value of drawnExpenses"

	^ drawnExpenses! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
drawnExpenses: anObject
	"Set the value of drawnExpenses"

	drawnExpenses := anObject! !

!Farm methodsFor: 'fates' stamp: 'dhn 10/12/2011 21:54'!
drawnFates
	"Answer the value of drawnFates"

	^ drawnFates! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
drawnFates: anObject
	"Set the value of drawnFates"

	drawnFates := anObject! !

!Farm methodsFor: 'buttons' stamp: 'dhn 9/6/2017 16:16:50'!
enableAll: aCollection
	"Enable each button named in aCollection"
	
	(self buttonsNamed: aCollection) do: [:ea | ea enableButton]! !

!Farm methodsFor: 'operating' stamp: 'dhn 9/6/2017 17:32:19'!
enableHarvestButtons
	"Enable buttons according to the state of the player"
	
	currentPlayer harvestEnabled
				ifTrue: [
					currentPlayer garnish
						ifTrue: [
							currentPlayer harvested.
							self enableAll: {'End Turn'}]
						ifFalse: [self enableAll: {'Harvest'. 'Expense'}]]
				ifFalse: [(self disabledAll: {'Harvest'. 'Fate'. 'Expense'})
							ifTrue: [self enableAll: {'End Turn'}]]
! !

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

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 18:01:09'!
exercisedOptions
	"Answer the value of exercisedOptions"

	exercisedOptions isNil ifTrue: [exercisedOptions := OrderedCollection new].
	^ exercisedOptions! !

!Farm methodsFor: 'options-reporting' stamp: 'dhn 9/9/2017 18:01:26'!
exercisedOptions: anObject
	"Set the value of exercisedOptions"

	exercisedOptions := anObject! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 7/12/2013 18:17'!
expenseAug1
	self payExpense;
	doAug1! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 7/12/2013 18:18'!
expenseJul3
	self payExpense;
	doJul3! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 7/12/2013 18:18'!
expenseSep1
	self payExpense;
	doSep1! !

!Farm methodsFor: 'expense' stamp: 'dhn 10/12/2011 21:57'!
expenses
	"Answer the value of expenses"

	^ expenses! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
expenses: anObject
	"Set the value of expenses"

	expenses := anObject! !

!Farm methodsFor: 'fates' stamp: 'dhn 10/12/2011 21:58'!
fates
	"Answer the value of fates"

	^ fates! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/13/2012 15:53'!
fates: anObject
	"Set the value of fates"

	fates := anObject! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 18:59:55'!
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
	currentPlayer drawnOption: true.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 17:52:05'!
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
	currentPlayer drawnOption: true.
	^ quantity! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/5/2017 20:09:28'!
harvest
	"Harvest and account for the result."
	| income |
	
	income _ currentPlayer 	harvest: (self class harvestSeason at: currentPlayer position).
	currentPlayer 
		tally: income;
		harvested.
	self triggerEvent: #itemChange.
	self disableAll: {'Harvest'}.
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 10/27/2014 21:28'!
harvestAug1
	"Harvest in August Week 1 and then travel."
	self harvest;
	doAug1! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/6/2017 16:38:32'!
harvestCows
	"Account for income from selling cattle."
	| income |
	
	income _  currentPlayer updateCattleAsset:  currentPlayer roll.
	currentPlayer 
		tally: income;
		harvested.
	self triggerEvent: #itemChange.
	self disableAll: {'Harvest'}.
	self setActionSelectorFor: #Harvest to: {self class harvestNormal}.
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 10/27/2014 21:30'!
harvestJul3
	"Harvest in July Week 3 and then travel."
	self harvest;
	 doJul3! !

!Farm methodsFor: 'harvesting' stamp: 'dhn 10/27/2014 21:31'!
harvestSep1
	"Harvest in September Week 1 and then travel."
	self harvest;
	 doSep1! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 19:01:27'!
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
	currentPlayer drawnOption: true.
	^ quantity! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 19:02:17'!
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
	currentPlayer drawnOption: true.
	^ quantity! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/2/2014 21:33'!
initialButtonState
	"Establish the button state at the start of the game"
	self enableAll: {'Option'}.
	self disableAll: {'End Turn'. 'Expense'. 'Fate'. 'Harvest'}! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/8/2017 15:51:51'!
initialize

	super initialize.
	cellCount _ self class cellsForGame.
	spaces _ self setUpSpaces.
	availableOptions _ self class optionsNames shuffled.
	exercisedOptions _ OrderedCollection new.
	fates _ FarmingGame fatesDesc asOrderedCollection shuffled.
	drawnFates _ OrderedCollection new.
	expenses _ FarmingGame expenseDesc asOrderedCollection shuffled.
	drawnExpenses _ OrderedCollection new.
	leases _ self setUpLeases.
	windowCount _ 0.
	won _ false
! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 19:40:59'!
lease: aName for: quantity 
	"Answer the purchased number of cattle on aName lease; account for the cost." 
	| total down balance who |
	
	who _ leases at: aName.
	who isNil
		ifTrue: [
			self halt.
			total _ quantity * CattleOnLease price.
			down _ 0.2 * total.
			balance _ total - down.
			self
				pay: down
				borrow: balance
				for: aName asSymbol
				amount: (Compiler evaluate: aName , ' auctionQuantity').
			currentPlayer drawnOption: true.
			leases at: aName put: currentPlayer identity]
		ifFalse: [GamePopUp inform: 'Sorry, but the ' , aName , ' lease is held by ' , who title: 'Lease Taken'].
	^ quantity! !

!Farm methodsFor: 'accessing' stamp: 'dhn 12/12/2011 21:46'!
listOfOptions
	"Answer the value of listOfOptions"

	^ listOfOptions! !

!Farm methodsFor: 'accessing' stamp: 'dhn 12/12/2011 21:46'!
listOfOptions: anObject
	"Set the value of listOfOptions"

	listOfOptions := anObject! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 17:37:24'!
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
	currentPlayer drawnOption: true.
	^ quantity! !

!Farm methodsFor: 'loan' stamp: 'dhn 9/7/2017 14:13:47'!
loanItem
	"Answer the value of loanItem"

	loanItem ifNil: [loanItem _ 0]. 	"nil is unacceptable during model initialization"
	^ loanItem! !

!Farm methodsFor: 'loan' stamp: 'dhn 9/7/2017 14:04:01'!
loanItem: anObject
	"Set the value of loanItem and loanReport"
	| enab |
	
	(loanItem _ anObject) ifNotNil: [
	anObject ~= 0
		ifTrue: [
			loanReport _ self loanReportFor: anObject.
			enab _ true]
		ifFalse: [
			loanReport _ ''.
			enab _ false].
		self triggerEvent: #itemChange.
		self triggerEvent: #payButton: with: enab.
		self changed: #loanItem]! !

!Farm methodsFor: 'loan' stamp: 'dhn 9/7/2017 14:02:44'!
loanList
	"Answer possible loan payment amounts"
	| list |
	
	list _ OrderedCollection new.
	1 to: 50 do: [:n | 
		list add: (String streamContents: [:str |
			str 
				nextPut: $$;
				nextPutAll: (n * self class paymentIncrement) printStringWithCommas;
				newLine])].
	^ list! !

!Farm methodsFor: 'loan' stamp: 'dhn 9/7/2017 14:06:36'!
loanReportFor: anInteger
	"Answer the effect on cash and debt of a payment selected by anInteger"
	| pmt enab |

	anInteger > 0
		ifTrue: [
			enab _ true.
			pmt _ anInteger * self class paymentIncrement min: currentPlayer debt negated.
			^ (String streamContents: [:string |
				string 
					nextPutAll: 'By making this payment, ', currentPlayer identity, ' would have:';
					newLine; newLine;
					nextPut: $$;
					nextPutAll: (currentPlayer debt + pmt) negated asInteger printStringWithCommas, ' in debt and';
					newLine;
					nextPut: $$;
					nextPutAll: (currentPlayer cash - pmt) asInteger printStringWithCommas , ' in cash and';
					newLine;
					nextPutAll: '$' , currentPlayer playerDebtLimit value negated  printStringWithCommas , ' debt limit.'])]
		ifFalse: [
			enab _ false.
			^ ''].
	self triggerEvent: #itemChange.
	self triggerEvent: #payButton: with: enab.
	self changed: #loanItem! !

!Farm methodsFor: 'accessing' stamp: 'dhn 9/7/2017 14:23:38'!
moveButton
	"Answer the value of moveButton"
	
	^ moveButton! !

!Farm methodsFor: 'accessing' stamp: 'dhn 8/31/2017 14:33:52'!
moveButton: anObject
	"Set the value of moveButton"
	
	^ moveButton _ anObject! !

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

!Farm methodsFor: 'harvesting' stamp: 'dhn 9/6/2017 16:20:56'!
payExpense
	"Account for an expense."
	| assoc |
	
	assoc _ self drawExpense.
	GamePopUp inform: assoc value title: 'Expense'.
	currentPlayer perform: assoc key key withArguments: {assoc key value}.
	currentPlayer expenseCount: 1 +  currentPlayer expenseCount.
	self triggerEvent: #itemChange.
	self disableAll: {'Expense'}.
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]! !

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

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 12:25'!
paymentList
	"Answer the value of paymentList"

	^ paymentList! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 12:24'!
paymentList: anObject
	"Set the value of paymentList"

	paymentList := anObject! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/22/2012 11:24'!
playersList
	"Answer the value of playersList"

	^ playersList! !

!Farm methodsFor: 'accessing' stamp: 'dhn 3/22/2012 11:24'!
playersList: anObject
	"Set the value of playersList"

	playersList := anObject! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 21:44'!
plotWindow
	"Answer the value of plotWindow."
	^ plotWindow! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 21:44'!
plotWindow: anObject
	"Set the value of plotWindow."
	plotWindow := anObject! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 21:46'!
queryWin: aBool
	"Change state of buttons according to whether a win has occurred."
		aBool ifTrue: [self wonButtonsState]
		ifFalse: [self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 21:47'!
rattlesnake: quantity 
	"Lease Rattlesnake Ridge for $quantity."
	self lease: 'Rattlesnake' for: quantity! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/30/2017 17:29:05'!
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
				triggerEvent: #setupToken: with: currentPlayer;
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

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:37:18'!
reportAllPlayers
	| str |
	str := String new writeStream.
	self players
		do: [:pl | str newLine; 
			nextPutAll: pl identity, ':'; newLine;
			nextPutAll: pl years asString; 
			nextPutAll: ' years as a farmer'; newLine; 
			nextPutAll: '$' , (pl netAssets roundTo: 1) printStringWithCommas; 
			nextPutAll: ' net assets'; newLine;
			 nextPutAll: pl options size asString;
			 nextPutAll: ' options held'; newLine.
			].
	^ str contents! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/19/2014 16:20'!
reportProgress
	"Plot players' progress"
	| window plot relation target |	
	window := self windowNamed: 'Progress'.
	plot := window findA: FarmPlot.
	target := boardMgr class goal.
	relation := GameRelation new 
		continuous;
		collection: {0@target. 15000@target}. "Goal of the game"
	relation color: Color black.
	plot addRelation: relation.
	players do: [:each |
		relation := GameRelation new 
			continuous.
		relation color: each tokenColor.
		relation collection: (each history select: [:a | a ~= nil]). "a player's progress"
		plot addRelation: relation.].
! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 8/30/2017 18:31:59'!
seasonAt: aPosition
	"Answer the season at aPosition."
	| y |
	
	y _ self class season select: [:a | a range x <= aPosition].
	^ y last ! !

!Farm methodsFor: 'operating' stamp: 'dhn 9/6/2017 16:21:42'!
setActionSelectorFor: aName to: aCollection
	"Set the old target for the button named aName. Set deferred method if present."
	| col btn |
	
	col _ aCollection asOrderedCollection.
	btn _ (self buttonsNamed: {aName}) first.
	btn oldTarget: col removeFirst.
	btn deferred: (
		col  
			ifNotEmpty: [col first]
			ifEmpty: [nil])! !

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

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/2/2017 11:16:47'!
setUpToken
	"Answer a token, used throughout the game, for the current player."
	| tok |
	
	tok _ FarmToken newFor: self.
	tok openInWorld: world.
	tok morphExtent: world morphExtent * (0.090@0.080).
	tok labelArea morphPosition: 0.235@0.165 * tok morphExtent.
	tok morphPosition: tok posAdjust.
	tokenPos _ tok morphPosition.
	tok delete. 	"not needed until next player"
	^ tok! !

!Farm methodsFor: 'initialize-release' stamp: 'dhn 9/7/2017 16:46:53'!
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
	currentPlayer _ pl
	
! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 21:59'!
setupToken: aPlayer
	"Set the token for aPlayer."
	token := FarmToken new.
	super setupToken: aPlayer
! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/20/2014 10:11'!
showEverybody
	"List all players."
	| xw name pane text |
	name := 'Everybody'.
	(xw := self windowNamed: name)
		ifNil: [
			windows add: ((xw := CustomSystemWindow labelled: 'All Players')
				removeMenuBox;
				model: self;
				layoutPolicy: ProportionalLayout new;
				refreshMessage: #updateEverybodyIn:;
				endReceiver: self;
				endMessage: #deleteWindow: with: name;
				setWindowColor: currentPlayer tokenColor;
				extent: 250 @ (50 + (100 * players size));
				center: self arena center).
			pane := (PasteUpMorph new).
			pane addMorph: (text := TextMorph new) fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
			xw addMorph: pane fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
			self arena addMorph: xw.
			text 
				width: text owner width;
				margins: 8@8;
				newContents: self reportAllPlayers.
			text extension locked: true.
			xw extension externalName: name]
		ifNotNil: [xw comeToFront].
	^ xw! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/20/2014 09:50'!
showProgress
	"Plot all player's net worth vs number of turns."
	| xw name plot |
	name := 'Progress'.
	(xw := self windowNamed: name)
		ifNil: [
			windows add: (xw := (CustomSystemWindow labelled: 'Players'' Net Assets vs Turns')
				refreshMessage: #updateProgressIn:;
				endReceiver: self;
				endMessage: #deleteWindow: with: name;
				setWindowColor: currentPlayer tokenColor;
				extent: 375 @ 380;
				removeMenuBox;
				model: self;
				layoutPolicy: ProportionalLayout new;
				center: self arena center).
			self arena addMorph: xw.
			xw extension externalName: name.
			plot := FarmPlot new
				mgr: self;
				setUpPlotFor: goal.
			plot layoutFrame: (LayoutFrame new
					leftFraction: 0;
					topFraction: 0.15;
					bottomFraction: 1;
					rightFraction: 1;
					topOffset: xw labelHeight * 2 negated).
			plot hResizing: #spaceFill; vResizing: #spaceFill.
			xw addMorph: plot fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
			xw model reportProgress]
		ifNotNil: [xw comeToFront].
! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/20/2014 10:09'!
showYourself
	"Open a window showing a player's statistics."
	| xw name pane text |
	name := 'Player'.
	(xw := self windowNamed: name)
		ifNil: [
			windows add: ((xw := CustomSystemWindow labelled: currentPlayer identity , '''s Statistics')
				removeMenuBox;
				model: self;
				layoutPolicy: ProportionalLayout new;
				refreshMessage: #updatePlayerIn:;
				endReceiver: self;
				endMessage: #deleteWindow: with: name;
				setWindowColor: currentPlayer tokenColor;
				extent: 375 @ 380;
				center: self arena center).
			pane := (PasteUpMorph new).
			pane addMorph: (text := TextMorph new) fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
			xw addMorph: pane fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
			self arena addMorph: xw.
			text 
				width: text owner width;
				margins: 8@8;
				newContents: self currentPlayer reportYourself.
			text extension locked: true.
			xw extension externalName: name]
		ifNotNil: [xw comeToFront].
	^ xw! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/4/2017 16:14:59'!
space1
	"Christmas Vacation"
	
	self disableAll: {'Move'}.
	self triggerEvent: #itemChange.
	GamePopUp inform: 'You will receive a bonus of $1,000.' title: 'Christmas Bonus'.
	currentPlayer tally: 1000.
	currentPlayer offFarm: 1000 + self currentPlayer offFarm.
	self triggerEvent: #itemChange.
	currentPlayer salary.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:43:03'!
space10
	"Mar week 1"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 2000 negated.
	( currentPlayer assets at: #Wheat)
		cost: 2000 + ( currentPlayer assets at: #Wheat) cost.
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:42:29'!
space11
	"Mar week 2"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500 negated.
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/3/2017 13:58:45'!
space12
	"Mar week 3"
	
	self disableAll: {'Move'}.
	GamePopUp inform: 'You will now go back to January Week 2.' title: 'January Week 2'.
	self triggerEvent: #itemChange.
	token jan2MoveFrom: currentPlayer position! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:46:32'!
space13
	"Mar week 4"
	
	self disableAll: {'Move'}.
	currentPlayer ifFruit
		ifTrue: [
			currentPlayer tally: 2000 negated.
			self triggerEvent: #itemChange].
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:51:31'!
space14
	"Apr week 1"
	
	self disableAll: {'Move'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:34:01'!
space15
	"Spring Planting"
	
	self disableAll: {'Move'}.
	currentPlayer doubleCorn.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:48:59'!
space16
	"Apr week 3"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500 negated.
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:49:32'!
space17
	"Apr week 4"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 1000 negated.
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:49:56'!
space18
	"May week 1"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500.
	self triggerEvent: #itemChange.
	self queryWin: self won! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:50:19'!
space19
	"May week 2"
	
	self disableAll: {'Move'}.
	currentPlayer tally: 500 negated.
	(currentPlayer assets at: #Corn)
		cost: 500 + (currentPlayer assets at: #Corn) cost.
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

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

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:51:23'!
space20
	"May week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 1000.
	self 
		triggerEvent: #itemChange;
		enableHarvestButtons ! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:51:21'!
space21
	"May week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:37:36'!
space22
	"Jun week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer halveHay.
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:51:55'!
space23
	"Jun week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	self 
		triggerEvent: #itemChange;
		enableHarvestButtons ! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/5/2017 20:11:01'!
space24
	"Jun week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer halveCherries: self.
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons] 
		ifFalse: [| a |
			a _ currentPlayer assets at: #Cherries.
			a missed: a missed + 1].
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/5/2017 20:11:39'!
space25
	"Jun week 4"
	
	self disableAll: {'Move'}.
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons]
		ifFalse: [| a |
			a _ currentPlayer assets at: #Cherries.
			a missed: a missed + 1].
	self enableAll: {'Fate'}.
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/5/2017 20:12:15'!
space26
	"Independence Day"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons]
		ifFalse: [| a |
			a _ currentPlayer assets at: #Cherries.
			a missed: a missed + 1].
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:40:11'!
space27
	"Jul week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer doubleHay.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self enableHarvestButtons
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:51:49'!
space28
	"Jul week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 17:49:12'!
space29
	"Jul week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer harvestEnabled
		ifTrue: [
			(currentPlayer assets at: #Hay)
				factor: ((currentPlayer assets at: #Hay) factor max: 1).
			self setActionSelectorFor: #Harvest to: {self class harvestJul3. self class harvestNormal}.
			self setActionSelectorFor: #Expense to: {self class expenseJul3. self class harvestNormal}.
			self enableAll: {'Harvest'. 'Expense'}]
		ifFalse: [
			self enableAll: {'End Turn'}.
			self doJul3]! !

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

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:42:01'!
space30
	"Jul week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer bumpWheat: 50.
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 16:08:14'!
space31
	"Aug week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer harvestEnabled
		ifTrue: [
			self setActionSelectorFor: #Harvest to: {self class harvestAug1. self class harvestNormal}.
			self setActionSelectorFor: #Expense to: {self class expenseAug1. self class expenseNormal}.
			self enableAll: {'Harvest'. 'Expense'}]
		ifFalse: [
			self enableAll: {'End Turn'}.
			self doAug1]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/4/2017 15:43:00'!
space32
	"Aug week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer hasHarvester
		ifTrue: [self triggerEvent: #itemChange].
	self enableHarvestButtons
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:53:57'!
space33
	"Aug week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	(currentPlayer assets at: #Wheat)
		gross: 500 + (currentPlayer assets at: #Wheat) gross.
	self 
		triggerEvent: #itemChange;
		enableHarvestButtons ! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:43:07'!
space34
	"Aug week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer bumpWheat: 50 negated.
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 16:41:03'!
space35
	"Sep week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	self enableHarvestButtons.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	currentPlayer ifTractor
		ifTrue: [
			self setActionSelectorFor: #Harvest to: {self class harvestSep1}.
			self setActionSelectorFor: #Expense to: {self class expenseSep1}]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:52:28'!
space36
	"Sep week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 16:44:46'!
space37
	"Harvest Moon"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	self triggerEvent: #itemChange.
	currentPlayer ifCows
		ifTrue: [
			currentPlayer harvestEnabled
				ifTrue: [
					self setActionSelectorFor: #Harvest to: {self class harvestLivestock. self class harvestNormal}.
					self enableAll: {'Harvest'. 'Expense'}]
				ifFalse: [self enableAll: {'End Turn'}]]
		ifFalse: [
			currentPlayer missedCattleHarvest.
			self enableAll: {'End Turn'}].
	self won
		ifTrue: [self wonButtonsState]
		ifFalse: [(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 15:21:53'!
space38
	"Sep week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer halveCows.
	currentPlayer ifCows
		ifTrue: [
			currentPlayer harvestEnabled
				ifTrue: [
					self setActionSelectorFor: #Harvest to: {self class harvestLivestock. self class harvestNormal}.
					self enableAll: {'Harvest'. 'Expense'}]
		ifFalse: [currentPlayer missedCattleHarvest]].
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) 	ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 16:46:23'!
space39
	"Sep week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer ifFruit
		ifTrue: [
			currentPlayer allocateFruitCost: 2000.
			self triggerEvent: #itemChange].
	currentPlayer ifCows
		ifTrue: [
			currentPlayer harvestEnabled
				ifTrue: [
					self setActionSelectorFor: #Harvest to: {self class harvestLivestock. self class harvestNormal}.
					self enableAll: {'Harvest'. 'Expense'}]
				ifFalse: [self enableAll: {'End Turn'}]]
		ifFalse: [currentPlayer missedCattleHarvest].
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 12:20:04'!
space4
	"Jan week 3"
	self disableAll: {'Move'}.
	currentPlayer ifCows: 500.
	self triggerEvent: #itemChange.
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	self enableAll: {'End Turn'}.
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/6/2017 16:47:01'!
space40
	"Oct week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	self triggerEvent: #itemChange.
	currentPlayer ifCows
		ifTrue: [
			currentPlayer harvestEnabled
				ifTrue: [
					self setActionSelectorFor: #Harvest to: {self class harvestLivestock. self class harvestNormal}.
					self enableAll: {'Harvest'. 'Expense'}]
				ifFalse: [self enableAll: {'End Turn'}]]
		ifFalse: [currentPlayer missedCattleHarvest].
	(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:45:54'!
space41
	"Oct week 2"
	
	self disableAll: {'Move'}.
	self enableAll: {'Fate'}.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:52:39'!
space42
	"Oct week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	(currentPlayer assets at: #Hay)
		factor: ((currentPlayer assets at: #Hay) factor max: 1).
	self enableHarvestButtons! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/5/2017 20:20:55'!
space43
	"Oct week 4"
	
	self disableAll: {'Move'}.
	self enableAll: {'Fate'}.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons]
		ifFalse: [| a |
			a _ currentPlayer assets at: #Apples.
			a missed: a missed + 1.
			(self disabledAll: {'Harvest'. 'Fate'. 'Expense'}) ifTrue: [self enableAll: {'End Turn'}]]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:52:50'!
space44
	"Nov week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons]
		ifFalse: [| a |
			a := currentPlayer assets at: #Apples.
			a missed: a missed + 1.
			self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:58:00'!
space45
	"Nov week 2"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	self triggerEvent: #itemChange.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons]
		ifFalse: [| a |
			a := currentPlayer assets at: #Apples.
			a missed: a missed + 1.
			self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:58:33'!
space46
	"Nov week 3"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 1000.
	self triggerEvent: #itemChange.
	(currentPlayer assets at: #Apples)
		factor: ((currentPlayer assets at: #Apples) factor max: 1).
	currentPlayer ifFruit
		ifTrue: [self enableHarvestButtons]
		ifFalse: [| a |
			a := currentPlayer assets at: #Apples.
			a missed: a missed + 1.
			self enableAll: {'End Turn'}]! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:59:26'!
space47
	"Nov week 4"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer allocateFruitCost: 1000.
	self 
		triggerEvent: #itemChange;
		enableHarvestButtons ! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 16:59:53'!
space48
	"Dec week 1"
	
	self disableAll: {'Move'. 'Fate'}.
	currentPlayer tally: 500.
	(currentPlayer assets at: #Wheat)
		gross: 500 + (currentPlayer assets at: #Wheat) gross.
	self 
		triggerEvent: #itemChange;
		enableHarvestButtons ! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:48:04'!
space49
	"Dec week 2"
	
	self disableAll: {'Move'}.
	self enableAll: {'Fate'}.
	self enableHarvestButtons
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 12:20:55'!
space5
	"Jan week 4"
	
	self disableAll: {'Move'}.
	self triggerEvent: #itemChange.
	currentPlayer passedGo
		ifTrue: [currentPlayer salary].
	currentPlayer doubleHay.
	self enableAll: {'End Turn'}.
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

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:35:09'!
space8
	"Feb week 3"
	
	self disableAll: {'Move'}.
	token springMove! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/9/2017 19:53:00'!
space9
	"Feb week 4"
	
	self disableAll: {'Move'}.
	currentPlayer
		addOption: (self drawOptionQuietly: false).
	self triggerEvent: #itemChange.
	self enableAll: {'End Turn'}! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 17:58:25'!
spaces
	"Answer the value of spaces"
	
	^ spaces! !

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

!Farm methodsFor: 'options-buying' stamp: 'dhn 10/27/2014 22:06'!
toppenish: quantity 
	"Lease Toppenish Ridge for $quantity."
	self lease: 'Toppenish' for: quantity
! !

!Farm methodsFor: 'options-buying' stamp: 'dhn 9/9/2017 19:43:28'!
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
	self currentPlayer drawnOption: true.
	^ quantity! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 15:53'!
updateEverybodyIn: aWindow
	"Bring window showing all players up to date"
		((aWindow findA: PasteUpMorph) findA: TextMorph)
			newContents: self reportAllPlayers! !

!Farm methodsFor: 'operating' stamp: 'dhn 8/31/2017 16:59:12'!
updateHistory
	"Change player's history"
	
	latestPlayer = playerIndex 
		ifTrue: [currentPlayer updateHistory]
		ifFalse: [
			latestPlayer _ playerIndex.
			currentPlayer appendHistory].
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 9/3/2017 12:25:39'!
updatePlayer
	"Make the screen show the latest numbers."
	
	self triggerEvent: #itemChange! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/17/2014 15:36'!
updatePlayerIn: aWindow
	"Bring window showing the current player's statistics up to date"
		((aWindow findA: PasteUpMorph) findA: TextMorph)
			newContents: currentPlayer reportYourself! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 11/19/2014 16:53'!
updateProgressIn: aWindow
	"Bring window showing players' progress toward goal up to date"
	| plot pl |
	plot := aWindow findA: FarmPlot.
	plot removeAllRelations;
		changed.
	pl := aWindow model currentPlayer.
	pl history at: pl turns put: pl turns @ pl netAssets.
	aWindow model reportProgress.
! !

!Farm methodsFor: 'space-related' stamp: 'dhn 9/1/2017 09:04:36'!
whatSpaceSays
	"Perform the method associated with the space where the player is"

	^ self perform: ((spaces atWrap: self currentPlayer position) routine)! !

!Farm methodsFor: 'accessing' stamp: 'dhn 9/7/2017 12:07:33'!
windowPosition: aPoint
	"Answer a staggered position for a window"
	
	windowCount _ windowCount + 1.
	^ aPoint + (windowCount * (20@20))! !

!Farm methodsFor: 'as yet unclassified' stamp: 'dhn 10/27/2014 22:10'!
wonButtonsState
	"Set the state of the buttons after a winner is identified."
	self disableAll: {'Pay Loan'. 'Expense'. 'Fate'. 'Harvest'. 'Move'}.
	self enableAll: {'End Turn'}.
! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/12/2017 14:35:26'!
assetList
	"Answer the list of assets in order suitable for auction."
	^ #('Hay' 'Grain' 'Fruit' 'CattleOnFarm' 'Ahtanum' 'Rattlesnake' 'Cascade' 'Toppenish' 'Tractor' 'Harvester')! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:18:31'!
cellsForGame
	"Answer the number of board spaces in view at any time"
	
	^ 7! !

!Farm class methodsFor: 'operation' stamp: 'dhn 8/31/2017 15:00:11'!
defaultGoal
	"Answer the default winning net asset goal"
	
	^ 250000! !

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

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:12:19'!
expenseAug1
	"Answer the actionSelector for the Expense button when on Aug wk 1."
	^#expenseAug1! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:12:36'!
expenseJul3
	"Answer the actionSelector for the Expense button when on Jul wk 3."
	^#expenseJul3! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:12:52'!
expenseNormal
	"Answer the normal actionSelector for the Expense button."
	^#payExpense! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:13:10'!
expenseSep1
	"Answer the actionSelector for the Expense button when on Sep wk 1."
	^#expenseSep1! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:13:27'!
harvestAug1
	"Answer the actionSelector for the Harvest button when on Aug wk 1."
	^#harvestAug1! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:14:10'!
harvestJul3
	"Answer the actionSelector for the Harvest button when on Jul wk 3."
	^#harvestJul3! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:14:22'!
harvestLivestock
	"Answer the actionSelector for the Harvest button when cattle are involved."
	^#harvestCows! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:14:40'!
harvestNormal
	"Answer the normal actionSelector for the Harvest button."
	^#harvest! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/7/2017 18:16:44'!
harvestSeason
	"Answer an ordered collection of harvest seasons in order of their board positions."
	|temp|
	
	temp _ OrderedCollection new.
	1 to: 19 do: [:a | temp addLast: #WINTER].
	20 to: 23 do: [:a | temp addLast: #Hay].
	24 to: 26 do: [:a | temp addLast: #Cherries].
	27 to: 29 do: [:a | temp addLast: #Hay].
	30 to: 34 do: [:a | temp addLast: #Wheat].
	35 to: 36 do: [:a | temp addLast: #Hay].
	37 to: 40 do: [:a | temp addLast: #Livestock].
	41 to: 42 do: [:a | temp addLast: #Hay].
	43 to: 46 do: [:a | temp addLast: #Apples].
	47 to: 49 do: [:a | temp addLast: #Corn].
	^temp! !

!Farm class methodsFor: 'operation' stamp: 'dhn 9/7/2017 18:17:02'!
harvestSep1
	"Answer the actionSelector for the Harvest button when on Sep wk 1."
	^#harvestSep1! !

!Farm class methodsFor: 'database' stamp: 'dhn 9/8/2017 17:15:56'!
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

!Farm class methodsFor: 'database' stamp: 'dhn 9/7/2017 18:17:37'!
paymentIncrement
	"Answer the payment increment for displaying loan payment choices"
	^ 1000! !

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

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/10/2017 14:37:41'!
feb4MoveFrom: aPosition
	"Animate relocation of self when player moves ahead to Feb 4 from aPosition"
	| oldPos newPos index n posns limit i final |
	
	final _ 9.
	index _ (Interval from: 1 to: model spaces size by: 1) asArray.
	oldPos _ index atWrap: aPosition.
	model positionBoardTo: oldPos.
	self position: 1.
	newPos _ final + 1.
	posns _ OrderedCollection new.
	n _ oldPos.
	[(index atWrap: n) ~= newPos] whileTrue: [posns add: (index atWrap: n). n _ n + 1].
	posns _ posns asArray.
	model positionBoardTo: posns first.
	
	self arrowRight.
	limit _ posns size.
	i _ 0.
	self when: #morphicStep evaluate: [ :unused |
		i _ i + 1.
		model positionBoardTo: (posns at: i).
		i < limit 
			ifFalse: [
				self stopStepping.
				self removeActionsForEvent: #morphicStep.
				arrow delete.
				model currentPlayer 
					position: final;
					years: 1 + model currentPlayer years;
					salary.
				model
					setActionSelectorFor: #Harvest to: {model class harvestNormal};
					setActionSelectorFor: #Expense to: {model class expenseNormal};
					doSpace.
				self doubled contents: model currentPlayer doubledString]].
	self startSteppingStepTime: 500! !

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

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/10/2017 14:38:48'!
jan2MoveFrom: aPosition
	"Animate relocation of self when player must go BACK to Jan. 2 from aPosition"
	| oldPos newPos index n posns limit i final |
	
	final _ 3.
	index _ (Interval from: 1 to: model spaces size by: 1) asArray.
	oldPos _ index atWrap: aPosition - 6.
	model positionBoardTo: oldPos.
	self position: 7.
	newPos _ index atWrap: final - 7.
	posns _ OrderedCollection new.
	n _ oldPos.
	[(index atWrap: n) ~= newPos] whileTrue: [posns add: (index atWrap: n). n _ n - 1].
	posns _ posns asArray.
	model positionBoardTo: posns first.
	
	self arrowLeft.
	limit _ posns size.
	i _ 0.
	self when: #morphicStep evaluate: [ :unused |
		i _ i + 1.
		model positionBoardTo: (posns at: i).
		i < limit 
			ifFalse: [
				self stopStepping.
				self removeActionsForEvent: #morphicStep.
				arrow delete.
				model currentPlayer position: final.
				model enableAll: {'End Turn'}.
				model doSpace.
				self doubled contents: model currentPlayer doubledString]].
	self startSteppingStepTime: 500! !

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

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/10/2017 14:36:05'!
moonMove
	"Animate relocation to Harvest Moon when player lands on space 29 and do the harvest"
	| oldPos newPos index n posns limit i final |
	
	final _ 37.
	index _ (Interval from: 1 to: model spaces size by: 1) asArray.
	oldPos _ model currentPlayer oldPosition.
	model positionBoardTo: oldPos.
	self position: 1.
	newPos _ final + 1.
	posns _ OrderedCollection new.
	n _ oldPos.
	[(index atWrap: n) ~= newPos] whileTrue: [posns add: (index atWrap: n). n _ n + 1].
	posns _ posns asArray.
	{posns} print.
	model positionBoardTo: posns first.
	
	self arrowRight.
	limit _ posns size.
	i _ 0.
	self when: #morphicStep evaluate: [ :unused |
		i _ i + 1.
		model positionBoardTo: (posns at: i).
		i < limit 
			ifFalse: [
				self stopStepping.
				self removeActionsForEvent: #morphicStep.
				arrow delete.
				model currentPlayer position: final.
				model
					setActionSelectorFor: #Harvest to: {model class harvestNormal};
					setActionSelectorFor: #Expense to: {model class expenseNormal}.
				model currentPlayer ifCows
					ifTrue: [model currentPlayer harvestEnabled
							ifTrue: [model enableAll: {'Harvest'. 'Expense'}]]
					ifFalse: [model enableAll: {'End Turn'}].
				model doSpace.
				self doubled contents: model currentPlayer doubledString]].
	self startSteppingStepTime: 500! !

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/5/2017 21:58:48'!
moved
	"Perform the results of the move"
	| pl |
	
	pl _ self who.
	doubled contents: who doubledString.
	model doSpace.
	pl harvestEnabled ifFalse: [model updateHistory]! !

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/2/2017 19:44:24'!
position: aCell
	"Position the receiver over the board cell numbered by aCell"
	| horiz |
	
	self morphPosition: self posAdjust.
	horiz _ (model cells at: aCell) morphPosition x.
	self morphPosition: (self morphPosition translatedBy: (horiz@0))! !

!FarmToken methodsFor: 'operations' stamp: 'dhn 9/10/2017 14:39:53'!
springMove
	"Animate relocation to Spring Planting when player lands on space 8"
	| oldPos posns limit i final |
	
	final _ 15.
	oldPos _ model currentPlayer oldPosition.
	self arrowRight.
	posns _ (Interval from: oldPos to: final - who roll by: 1) asArray.
	{oldPos. who roll} print.
	{posns} print.
	limit _ posns size.
	i _ 0.
	self when: #morphicStep evaluate: [ :unused |
		i _ i + 1.
		model positionBoardTo: (posns at: i).
		i < limit 
			ifFalse: [
				self stopStepping.
				self removeActionsForEvent: #morphicStep.
				arrow delete.
				model currentPlayer position: final.
				model space15.
				self doubled contents: model currentPlayer doubledString]].
	self startSteppingStepTime: 500! !

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

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/12/2017 15:21:56'!
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
	model when: #jobAuctionRequired send: #showJobAuctionAt: to: self with: #pos.
	model when: #showToken send: #showToken to: self.
	model when: #showSeasons: send: #showSeasons: to: self with: #index.
	model when: #showDraw send: #showDraw: to: self with: #option.
	model when: #showAssets send: #showAssets to: self.
! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 8/29/2017 20:46:56'!
describe

	^ ''! !

!FarmingGame methodsFor: 'operating' stamp: 'dhn 9/9/2017 16:29:41'!
displayNumbers
	"Display cash, debt, and goal progress"
	| pl c d net otherLead pluralForm others |
	
	(pl _ model currentPlayer) ifNotNil: [
		c _ '$', pl cash truncated printStringWithCommas.
		d _ '$', pl debt negated asInteger printStringWithCommas.
		net _ (pl netAssets / model goal * 100 roundDownTo: 0.1) asString.
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

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:27:11'!
getPlayers
	"Get the names of two to six players"
	| x y cnt clrs |

	model disableAll: {'Players'. 'Tour'}.
	clrs _ Token colors shuffled.
	cnt _ 0.
	x _ FillInTheBlankMorph request: 'First player''s name?' initialAnswer: ''.
	x 
		ifEmpty: [
			model enableAll: {'Players'. 'Tour'}.
			^ nil]
		ifNotEmpty: [
			cnt _ cnt + 1.
			model setupPlayer: x color: (clrs at: cnt)].
	
	[cnt < 6] whileTrue: [
		y _ FillInTheBlankMorph request: 'Next player''s name?' initialAnswer: ''.
		y
			ifEmpty: [
				cnt > 1 
					ifTrue: [self startGame]
					ifFalse: [
						model players: OrderedCollection new.
						model enableAll: {'Players'. 'Tour'}].
				^ nil]
			ifNotEmpty: [
				cnt _ cnt + 1.
				model setupPlayer: y color: (clrs at: cnt)]].
		
	self startGame
! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:28:09'!
initialize

	super initialize! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:38:25'!
layoutSubmorphs

    super layoutSubmorphs.
    self board morphExtent: self board owner morphExtent! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 9/2/2017 20:33:23'!
makeAddPlayerButton
	"Answer the 'Players' button"

	^ (FarmButton label: 'Players' action: #getPlayers state: true model: self)
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

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 3/22/2012 10:36'!
namesCache
	"Answer the value of namesCache"

	^ namesCache! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 3/22/2012 10:36'!
namesCache: anObject
	"Set the value of namesCache"

	namesCache := anObject! !

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

!FarmingGame methodsFor: 'termination' stamp: 'dhn 8/31/2017 17:58:24'!
quitGame

	(self confirm: 'Are you sure you want to quit ', FarmingGame asString, '?')
		ifTrue: [model quitGame]! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 9/4/2011 16:53'!
seasons
	"Answer the value of seasons"

	^ seasons! !

!FarmingGame methodsFor: 'accessing' stamp: 'dhn 9/4/2011 16:53'!
seasons: anObject
	"Set the value of seasons"

	seasons := anObject! !

!FarmingGame methodsFor: 'initialization' stamp: 'dhn 8/29/2017 20:36:41'!
setupToken: aPlayer
	"Place the player's token on the board"
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
	^ model token who: aPlayer! !

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

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/11/2017 21:45:55'!
showDraw: anObject
	"Show window with description of an option"
	| pl win |
		
	pl _ model currentPlayer.
	win _ DrawView openOn: model.
	win openInWorld: pasteup.
	win
		setLabel: ('Option for ', pl identity);
		setWindowColor: pl color;
		startButtons;
		details: anObject;
		morphPosition: self windowPosition;
		morphExtent: 300 @ 220! !

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

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/13/2017 16:32:20'!
showOpts
	"Show window for buying assets"
	| pl win |
		
	pl _ model currentPlayer.
	pl options notEmpty
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

!FarmingGame methodsFor: 'operating' stamp: 'dhn 8/31/2017 15:04:10'!
titleChange: aPlayer
	"Change the title, showing player data in color"
	"Display cash, debt, and goal progress"
	| c d net otherLead pluralForm others |
	
	gameTitle contents: aPlayer identity , '''s turn.'.
	gameTitle color: aPlayer color.
	
	c _ '$', model currentPlayer cash truncated printStringWithCommas.
	d _ '$', model currentPlayer debt negated asInteger printStringWithCommas.
	net _ (model currentPlayer netAssets / model goal * 100 roundDownTo: 0.1) asString.
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

!FarmingGame methodsFor: 'windows' stamp: 'dhn 9/7/2017 12:10:45'!
windowPosition
	"Answer the position for a window"
	
	^ seasonsArea morphPosition + (model windowPosition: 60@-10)! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 11/3/2014 12:39'!
boardColor
	"Answer the color of the board itself"
	^Color yellow alpha: 0.5! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 9/2/2017 13:26:24'!
buttonSize
	"Answer the layoutSpec for buttons on the game board"
	
	^ LayoutSpec proportionalWidth: 0.06 proportionalHeight: 0.8! !

!FarmingGame class methodsFor: 'instance creation' stamp: 'dhn 8/29/2017 20:01:13'!
cellColor
	"Answer the color for a cell"
	
	^ Color r: 1.0 g: 0.93 b: 0.83! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 3/22/2012 10:30'!
debtLimit
	"Answer the debt limit for a player to stay in the game."
	^ -50000! !

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/26/2014 12:39'!
defaultGoal
	"Answer the default winning net asset goal"
	^ 250000.
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

!FarmingGame class methodsFor: 'as yet unclassified' stamp: 'dhn 9/17/2014 16:55'!
goal
	"Answer the winning net asset goal"
	| normal |
	normal := 250000.
	Game testMode
		ifTrue: [^ normal * 10]
		ifFalse: [^ normal]	"Answer the winning net asset goal"
! !

!FarmingGame class methodsFor: 'documentation' stamp: 'dhn 8/29/2017 20:00:09'!
how
	"
	FarmingGame start.
	"! !

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

!FarmingView methodsFor: 'initialization' stamp: 'dhn 9/7/2017 12:18:32'!
removeWindowMenu
	"Remove the button in the title bar which brings up the window menu"
	
	(self findDeepSubmorphThat: [:s | s balloonText = 'window menu'] ifAbsent: [^ nil]) delete! !

!FarmingView methodsFor: 'dropping/grabbing' stamp: 'dhn 9/7/2017 12:18:32'!
wantsToBeDroppedInto: aMorph
	"Return true if it's okay to drop the receiver into aMorph. This check is symmetric to #wantsDroppedMorph:event: to give both parties a chance of figuring out whether they like each other."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^true! !

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

!AssetView methodsFor: 'operating' stamp: 'dhn 9/13/2017 10:13:04'!
reportFor: aName
	"Answer the status report for anAsset"
	| property player asset col |
	
	player _ model currentPlayer.
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

!AssetView class methodsFor: 'class initialization' stamp: 'dhn 9/13/2017 11:35:11'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
			
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

!DrawView methodsFor: 'termination' stamp: 'dhn 9/10/2017 20:11:34'!
ack
	"Acknowledge what is in the text pane and close the receiver"
	
	model triggerEvent: #optionDrawn.
	self delete! !

!DrawView methodsFor: 'initialization' stamp: 'dhn 9/10/2017 17:51:13'!
buildMorphicWindow
	"Lay out the window for purchases"
	
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

!DrawView methodsFor: 'termination' stamp: 'dhn 9/10/2017 20:13:44'!
closeBoxHit

	super closeBoxHit! !

!DrawView methodsFor: 'accessing' stamp: 'dhn 9/10/2017 17:57:56'!
details: aString
	"Set the content of the text pane"
	
	textPane model actualContents: aString! !

!DrawView methodsFor: 'termination' stamp: 'dhn 9/10/2017 17:05:16'!
endIt
	"Close the receiver"
	
	self delete! !

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

!DrawView class methodsFor: 'class initialization' stamp: 'dhn 9/10/2017 16:56:28'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
	aModel when: #deleteOpenWindows send: #endIt to: win.
	
	^ win
! !

!LoanView methodsFor: 'initialization' stamp: 'dhn 9/16/2016 12:05:14'!
buildMorphicWindow
	"Lay out the window for paying down debt"
	| list1 rightPane |
	
	self layoutMorph beRow.
	list1 _ (PluggableListMorph
		model: model
		listGetter: #loanList
		indexGetter: #loanItem
		indexSetter: #loanItem:
		mainView: self
		menuGetter: nil
		keystrokeAction: nil)
			name: #'payment size'.
			
	buttonArea _ (LayoutMorph newRow)
		layoutSpec: (LayoutSpec 
			proportionalWidth: 1.0
			proportionalHeight: 0.15
			minorDirectionPadding: #center).
	buttonArea
		name: #buttons;
		padding: #center.
	model when: #payButton: send: #payButton: to: self with: #state.

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
		addMorph: list1 proportionalWidth: 0.35;
		addAdjusterAndMorph: rightPane layoutSpec: (LayoutSpec useAll)	
! !

!LoanView methodsFor: 'termination' stamp: 'dhn 9/12/2016 17:01:31'!
closeBoxHit

	model 
		loanItem: nil;
		enableAll: {'Pay Loan'}.
	super closeBoxHit! !

!LoanView methodsFor: 'accessing' stamp: 'dhn 9/13/2017 10:34:52'!
details
	
	{model loanItem} print.
	textPane model actualContents: (model loanReportFor: model loanItem)	"note that the textPane model differs from the model for this view"! !

!LoanView methodsFor: 'termination' stamp: 'dhn 9/12/2016 17:00:38'!
endIt
	"Close the receiver"
	
	model 
		loanItem: nil;
		enableAll: {'Pay Loan'}.
	self delete! !

!LoanView methodsFor: 'operating' stamp: 'dhn 9/7/2017 13:46:46'!
pay
	"Make payment on the loan"
	| payment selection pl |
	
	selection _ model loanItem.
	model loanItem: 0. 	"avoid multiples via contact bounce"
	pl _ model currentPlayer.
	payment _ selection * model class paymentIncrement min: pl debt negated.
	pl debt: pl debt + payment.
	pl cash: pl cash - payment.
	model updatePlayer.
	(pl playerDebtLimit value <= pl debt and: [model moveButton enabled not])
		ifTrue: [
			model updateHistory.
			model enableAll: {'End Turn'}].
	self details! !

!LoanView methodsFor: 'accessing' stamp: 'dhn 9/16/2016 14:57:28'!
payButton: aBool
	"Change Pay button state according to aBool"
	
	aBool
		ifTrue: [payButton enableButton]
		ifFalse: [payButton disableButton]! !

!LoanView methodsFor: 'accessing' stamp: 'dhn 9/13/2017 17:14:36'!
player: anObject
	"Set the value of player to anObject"
	
	player _ anObject! !

!LoanView methodsFor: 'initialization' stamp: 'dhn 9/16/2016 16:30:09'!
startButtons
	"Set the Loan Payment buttons"
	
	payButton _ GameButtonMorph label: 'Pay' action: #pay state: false model: self.
	payButton 
		morphExtent: 70@20;
		setBalloonText: 'Make the selected payment.'.
		
	cancelButton _ GameButtonMorph label: 'Cancel' action: #endIt state: true model: self.
	cancelButton 
		morphExtent: 70@20;
		setBalloonText: 'Forget about reducing debt.'.

	buttonArea
		removeAllMorphs;
		addMorph: payButton;
		addMorph: cancelButton;
		padding: #center.
! !

!LoanView class methodsFor: 'class initialization' stamp: 'dhn 9/12/2016 14:08:41'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel label: 'Purchases'.
	win removeWindowMenu.
			
	aModel when: #itemChange send: #details to: win.
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

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/13/2017 17:27:03'!
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

!OptionsView methodsFor: 'termination' stamp: 'dhn 9/13/2017 16:00:25'!
closeBoxHit

	model enableAll: {'Purchase'}.
	super closeBoxHit! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/13/2017 16:44:48'!
details
	"Set the content of the text pane"
	
	textPane model actualContents: 
		(player options
			ifEmpty: ['']
			ifNotEmpty: [self optionsReport])! !

!OptionsView methodsFor: 'termination' stamp: 'dhn 9/13/2017 16:00:41'!
endIt
	"Close the receiver"
	
	model enableAll: {'Purchase'}.
	self delete! !

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

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:13:20'!
optionsItem
	"Answer the value of optionsItem"

	optionsItem ifNil: [optionsItem _ 0]. 	"nil is unacceptable during model initialization"
	^ optionsItem! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 16:55:01'!
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
	self details.
	self changed: #optionsItem 	"makes deselection of the list happen"! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:30:52'!
optionsList
	"Answer the shopping list for a player"
	
	^ (player 
		ifNotNil: [player options]
		ifNil: [OrderedCollection new])! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:21:40'!
optionsList: aList
	"Set the shopping list for a player"
	
	player options: aList! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:22:11'!
optionsReport
	"Answer the report on the selected option"

	^ optionsItem > 0
		ifTrue: [self optionsReport: (self optionsList at: optionsItem)]
		ifFalse: ['']! !

!OptionsView methodsFor: 'operation' stamp: 'dhn 9/13/2017 14:22:43'!
optionsReport: anAsset
	"Show the status of anAsset for shopping purposes"
	
	^ player optionDescription: anAsset! !

!OptionsView methodsFor: 'accessing' stamp: 'dhn 9/13/2017 17:06:23'!
player: anObject
	"Set the value of player"
	
	player _ anObject! !

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

!OptionsView class methodsFor: 'class initialization' stamp: 'dhn 9/12/2017 07:57:08'!
openOn: aModel
	"Answer an instance of this class on aModel"
	| win |

	win _ self open: aModel.
	win removeWindowMenu.
			
	aModel when: #optionDrawn send: #getList to: win.
	aModel when: #details send: #details to: win.
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

!FarmAsset methodsFor: 'as yet unclassified' stamp: 'dhn 9/23/2014 13:18'!
assetValue
	^self class price * (self quantity / 2)! !

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

!Crop methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:14'!
initialize
	super initialize.
! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:35'!
rate
	"Answer the value of rate"

	rate ifNil: [rate := 0].
	^ rate! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/18/2011 12:46'!
rate: anObject
	"Set the value of rate"

	rate := anObject! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/13/2017 14:00:18'!
reportAsAssetFor: aPlayer 
	| str |
	str := String new writeStream.
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
		ifFalse: [str nextPutAll: (self quality / self count printOn: str fractionDigits: 1) asString
					, ' = average harvest quality'].
	^ str contents! !

!Crop methodsFor: 'accessing' stamp: 'dhn 9/18/2011 12:49'!
reset
	self factor: 1.
	self rate: 0.! !

!Crop class methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 14:51'!
auctionQuantity
	"Answer the default quantity that can be auctioned"
	^ 10! !

!Crop class methodsFor: 'as yet unclassified' stamp: 'dhn 1/13/2014 22:14'!
lotDescription: aString 
	^ self auctionQuantity asString , ' Acres of ' , aString! !

!Fruit methodsFor: 'initialize-release' stamp: 'dhn 9/18/2011 15:34'!
initialize
	super initialize.
! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/24/2011 21:49'!
at: aRoll for: aQuantity
	"Answer the yield as if looking it up in a table."
	^(self yieldVector at: aRoll) * (aQuantity // 5)! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 1/11/2014 14:45'!
auctionQuantity
	"Answer the quantity that can be auctioned"
	^ 5! !

!Fruit class methodsFor: 'as yet unclassified' stamp: 'dhn 9/8/2017 18:02:29'!
lotQuantity
	^ 10! !

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

!Hay methodsFor: 'as yet unclassified' stamp: 'dhn 9/15/2014 10:37'!
assetValue
	^self class price * self quantity! !

!Hay methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 11:58'!
initialize
	super initialize.
	description := 'Hay'! !

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

!Equipment methodsFor: 'as yet unclassified' stamp: 'dhn 9/15/2014 10:43'!
assetValue
	^self class price * self quantity! !

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

!Equipment methodsFor: 'accessing' stamp: 'dhn 9/1/2017 13:36:50'!
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

!Equipment methodsFor: 'accessing' stamp: 'dhn 9/18/2011 14:39'!
reset! !

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

!Harvester class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 12:27:44'!
optionText
	^ 'EQUIPMENT SALE
old but useable HARVESTER
Total $', self optionCost printStringWithCommas! !

!Tractor methodsFor: 'initialize-release' stamp: 'dhn 1/18/2014 11:50'!
initialize
	super initialize.
	description := 'Tractor'! !

!Tractor class methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:40:39'!
optionText
	^ 'EQUIPMENT SALE
old but useable TRACTOR
Total $', self optionCost printStringWithCommas! !

!Livestock methodsFor: 'initialize-release' stamp: 'dhn 9/25/2011 05:11'!
initialize
	super initialize.
! !

!Livestock methodsFor: 'as yet unclassified' stamp: 'dhn 9/1/2017 13:59:15'!
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
		ifFalse: [str nextPutAll: (self quality / self count printOn: str fractionDigits: 1)
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

!CattleOnFarm methodsFor: 'as yet unclassified' stamp: 'dhn 9/15/2014 10:43'!
assetValue
	^self class price * self quantity! !

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

!CattleOnLease class methodsFor: 'as yet unclassified' stamp: 'dhn 1/21/2014 10:30'!
lotDescription: aString 
	^ self auctionQuantity asString , ' Head of Cattle and Lease of ', aString, ' Ridge'! !

!CattleOnLease class methodsFor: 'as yet unclassified' stamp: 'dhn 1/18/2014 12:43'!
price
	"Per head"
	^ 1000! !

!Ahtanum methodsFor: 'as yet unclassified' stamp: 'dhn 1/23/2014 15:30'!
initialize
	super initialize.
	description := 'Ahtanum', where! !

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

!Cascade methodsFor: 'as yet unclassified' stamp: 'dhn 1/23/2014 15:30'!
initialize
	super initialize.
	description := 'Cascade', where! !

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

!Rattlesnake methodsFor: 'as yet unclassified' stamp: 'dhn 1/23/2014 15:31'!
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

!Toppenish methodsFor: 'as yet unclassified' stamp: 'dhn 1/23/2014 15:31'!
initialize
	super initialize.
	description := 'Toppenish', where! !

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

!Farmer methodsFor: 'expense-related' stamp: 'dhn 1/15/2014 17:29'!
allocateFruitCost: anAmount
	| f1 f2 amt |
	amt := anAmount // 2.
	f1 := assets at: #Cherries.
	f1 quantity > 0
		ifTrue: [f1 cost: amt + f1 cost.
			self  tally: amt negated].
	f2 := assets at: #Apples.
	f2 quantity > 0
		ifTrue: [f2 cost: amt + f2 cost.
			self  tally: amt negated].
! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 12/15/2013 20:16'!
allocateHarvesterLease: anAmount 
	"When a player incurs anAmount for not owning a harvester, parcel
	anAmount out to those who do."
	| col |
	col := self mgr players
				select: [:pl | pl ifHarvester].
	col
		do: [:pl | 
			| machine |
			machine := pl assets at: #Harvester.
			machine gross: machine gross + (anAmount // col size).
			pl tally: anAmount // col size]! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 12/15/2013 20:20'!
allocateTractorLease: anAmount 
	"When a player incurs anAmount for not owning a harvester, parcel
	anAmount out to those who do."
	| col |
	col := self mgr players
				select: [:pl | pl ifTractor].
	col
		do: [:pl | 
			| machine |
			machine := pl assets at: #Tractor.
			machine gross: machine gross + (anAmount // col size).
			pl tally: anAmount // col size]! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 8/31/2017 16:59:05'!
appendHistory
	"Add to the end of history"
	
	history addLast: self netAssets! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2014 20:39'!
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

!Farmer methodsFor: 'expense-related' stamp: 'dhn 1/15/2014 17:30'!
boostWheat: anAmount
	(assets at: #Wheat) gross: anAmount + (assets at: #Wheat) gross.
	self tally: anAmount! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:30'!
bumpWheat: aRate 
	(assets at: #Wheat)
		rate: aRate + (assets at: #Wheat) rate! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/22/2014 10:13'!
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

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 14:50'!
buyOption: aName for: aNumber 
	self tally: aNumber negated.
	self options addFirst: aName.
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/23/2014 12:48'!
calfWeights: aParm
	| eachHerd |
	eachHerd := assets
				select: [:ea | ea class inheritsFrom: Livestock].
	eachHerd
		do: [:each | self cattleBonus: each]
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 12/6/2011 11:47'!
cattleBonus: anAsset
	anAsset factor: 1.5.
	"yearCount increased by 3 so that factor will be in effect for the NEXT 2 years"
	anAsset yearCount: 3 + anAsset yearCount.
! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/15/2014 23:23'!
cowsOnLeases
	"Answer a collection of cattle numbers on leases"
	| held temp |
	held := self leasesHeld.
	held isEmpty
		ifTrue: [^ #(0 )]
		ifFalse: [temp := OrderedCollection new.
			 held valuesDo:
				 [:item | 
					temp add: (assets at: item value class name) quantity;
						 yourself].
			^ temp]! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 17:31'!
customHire: anAmount 
	| cnt ttl |
	(assets at: #Harvester) quantity > 0
		ifFalse: [^ nil].
	cnt := 0.
	mgr players
		do: [:pl | pl ~= self
				ifTrue: [(pl assets at: #Harvester) quantity = 0
						ifTrue: [cnt := cnt + 1.
							pl tally: anAmount negated.
							(pl assets at: #Harvester)
								cost: (pl assets at: #Harvester) cost + anAmount]]].
	ttl := anAmount * cnt.
	self tally: ttl.
	(assets at: #Harvester) 
		gross: (assets at: #Harvester) gross + ttl! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 17:32'!
cutworms: anAmount 
	| a1 a2 |
	a1 := anAmount * (assets at: #Cherries) quantity // 2.
	a2 := anAmount * (assets at: #Apples) quantity // 2.
	self allocateFruitCost: a1 + a2! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 17:33'!
disasterPmt: aParm 
	| amt |
	amt := (assets at: #Wheat) quantity * aParm.
	(assets at: #Wheat)
		gross: amt / 2 + (assets at: #Wheat) gross.
	(assets at: #Corn)
		gross: amt / 2 + (assets at: #Corn) gross.
	self tally: amt! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:33'!
doubleCorn
	(assets at: #Corn)
		factor: 2 * (assets at: #Corn) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:33'!
doubleCorn: anObject 
	(assets at: #Corn)
		factor: 2 * (assets at: #Corn) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:34'!
doubleHay
	(assets at: #Hay)
		factor: 2 * (assets at: #Hay) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:34'!
doubleHay: anObject 
	(assets at: #Hay)
		factor: 2 * (assets at: #Hay) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 8/31/2017 15:32:48'!
doubledString
	"Answer the string signifying whether the market is doubled for the receiver"
	| mkt |
	
	mkt _ (mgr seasonAt: self position) desc asSymbol.
	markets
		ifNil: [^ '']
		ifNotNil: [^ (markets at: mkt ifAbsent: [^ '']) > 1 ifTrue: ['(doubled)'] ifFalse:['']]! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 10/6/2011 20:31'!
drawExpense: anObject
	^self mgr drawExpense! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 10/28/2011 16:20'!
drawnOption
	"Answer the value of drawnOption"
	drawnOption ifNil: [drawnOption := false].
	^ drawnOption! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 10/28/2011 16:18'!
drawnOption: aBool
	"Set the value of drawnOption"

	drawnOption := aBool! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:39'!
emergencies
	"Answer the value of emergencies"

	emergencies ifNil: [emergencies := 0].
	^ emergencies! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/23/2011 21:00'!
emergencies: anObject
	"Set the value of emergencies"

	emergencies := anObject! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 8/29/2017 21:30:41'!
emergencyLoan
	| loan str |
	str := String new writeStream.
	str nextPutAll: self identity;
		nextPutAll: ' is out of money.'; newLine;
		nextPutAll: self identity;
		nextPutAll: ' will receive $4,000 cash and a bank note for $5,000.'.
	GamePopUp inform: str contents title: 'Emergency Loan'.
	loan := 5000 negated.
	self debt: loan + self debt.
	self interestPd: 1000 + self interestPd.
	self paidInterest: 1 + self paidInterest.
	self emergencies: 1 + self emergencies.
	^(loan + 1000) negated! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 1/24/2014 12:18'!
feedBill: anAmount 
	| eachQuantity penalty eachHerd total portion ix |
	eachHerd := assets
				select: [:ea | ea class inheritsFrom: Livestock].
	eachQuantity := OrderedCollection new.
	eachHerd
		do: [:ea | eachQuantity add: ea quantity].
	total := eachQuantity
				inject: 0
				into: [:a :c | a + c].
	total > 0
		ifTrue: [penalty := anAmount * total.
			self tally: penalty negated.
			portion := penalty * (eachQuantity / total).
			ix := 0.
			eachHerd
				do: [:each | each cost: each cost
							+ (portion at: (ix := ix + 1))]]! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 1/15/2014 17:35'!
fertilizeFruit: anAmount 
	| p1 p2 |
	p1 := anAmount * (assets at: #Cherries) quantity // 2.
	(assets at: #Cherries)
		cost: p1 + (assets at: #Cherries) cost.
	p2 := anAmount * (assets at: #Apples) quantity // 2.
	(assets at: #Apples)
		cost: p2 + (assets at: #Apples) cost.
	^ p1 + p2! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 1/15/2014 17:37'!
fertilizer: anAmount 
	| penalty ttl |
	ttl := 0.
	penalty := anAmount * (assets at: #Hay) quantity.
	ttl := ttl + penalty.
	(assets at: #Hay)
		cost: penalty + (assets at: #Hay) cost.
	penalty := anAmount * (assets at: #Wheat) quantity.
	ttl := ttl + penalty.
	(assets at: #Wheat)
		cost: penalty / 2 + (assets at: #Wheat) cost.
	(assets at: #Corn)
		cost: penalty / 2 + (assets at: #Corn) cost.
	penalty := self fertilizeFruit: anAmount.
	ttl := ttl + penalty.
	self tally: ttl negated! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/25/2011 10:38'!
garnish
	"Answer the value of garnish"
	garnish ifNil: [garnish := false].
	^ garnish! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/24/2011 21:55'!
garnish: aBoolean
	garnish := aBoolean.! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 8/30/2017 17:31:41'!
garnishSpiel
	GamePopUp inform: 'The IRS is garnishing your income.' title: 'Loss of Income'.
! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 9/2/2017 20:11:39'!
goBackToJan2
	"Move the token back to Jan 2"
	
	GamePopUp inform: 'You will now go back to January Week 2.' title: 'January Week 2'.
	self mgr token jan2MoveFrom: position! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 10/2/2013 21:05'!
goDirectly: aPosition 
	self goBackToJan2.
	self mgr disableAll: {'Move'. 'Expense'. 'Fate'. 'Harvest'}.
	self mgr enableAll: {'End Turn'}! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:37'!
halveCherries: anObject 
	(assets at: #Cherries)
		factor: 0.5 * (assets at: #Cherries) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/23/2014 12:50'!
halveCows
	| eachHerd |
	eachHerd := assets
				select: [:ea | ea class inheritsFrom: Livestock].
	eachHerd
		do: [:each | each factor: 0.5 * each factor]! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:38'!
halveHay
	(assets at: #Hay)
		factor: 0.5 * (assets at: #Hay) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:39'!
halveHay: anObject 
	(assets at: #Hay)
		factor: 0.5 * (assets at: #Hay) factor! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 4/26/2012 21:05'!
harvest: anAsset 
	| var yield |
	var := (1 to: 6) atRandom.
	yield := self updateAsset: anAsset with: var.
	^ yield! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 8/31/2017 16:53:02'!
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

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 11/30/2014 16:58'!
harvested
	"Indicate that the player has harvested this season."
	| sea |
	sea := harvests detect: [:ea | ea desc = (self mgr seasonAt: self position) desc] 
		ifNone: [self halt].
	sea enabled: false! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 11/30/2014 17:40'!
harvests
	"Answer the value of harvests"
	^ harvests! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:39'!
hasFruit
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

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/17/2014 22:08'!
heldCalves: anAmount 
	| q1 q2 eachHerd headCount portion ix |
	q1 := self cowsOnLeases.
	q2 := (assets at: #CattleOnFarm) quantity.
	headCount := q1
				inject: q2
				into: [:a :b | a + b].
	headCount > 0
		ifTrue: [self tally: anAmount.
			eachHerd := self leasesHeld add: #CattleOnFarm
							-> (assets at: #CattleOnFarm);
						 yourself.
			portion := anAmount * ((q1 asOrderedCollection add: q2;
							 yourself) / headCount).
			ix := 0.
			eachHerd
				do: [:each | each gross: each gross
							+ (portion at: (ix := ix + 1))]] ! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 17:56'!
helens: anObject 
	| rolls r amt |
	amt := 500 * (assets at: #Hay) quantity.
	self tally: amt.
	(assets at: #Hay)
		gross: amt + (assets at: #Hay) gross.
	rolls := OrderedCollection new.
	self mgr players
		do: [:pl | pl ~= self
				ifTrue: [r := (1 to: 2) atRandom.
					rolls addLast: r.
					"to facilitate testing"
					r = 1
						ifTrue: [amt := 100 * (pl assets at: #Hay) quantity.
							pl tally: amt negated.
							(pl assets at: #Hay)
								cost: (pl assets at: #Hay) cost + amt]]].
	^ rolls! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 17:57'!
horseHay: anAmount 
	| qty gross |
	qty := (assets at: #Hay) quantity.
	0 < qty
		ifTrue: [gross := anAmount * qty.
			self tally: gross.
			(assets at: #Hay)
				gross: gross + (assets at: #Hay) gross]! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:57'!
ifCows
	| q1 q2 |
	q1 := self cowsOnLeases.
	q2 := (assets at: #CattleOnFarm) quantity.
	^ 0
		< (q1
				inject: q2
				into: [:a :b | a + b])! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 20:35'!
ifCows: anAmount 
	| q1 q2 eachHerd headCount portion ix |
	q1 := self cowsOnLeases.
	q2 := (assets at: #CattleOnFarm) quantity.
	headCount := q1
				inject: q2
				into: [:a :b | a + b].
	0 < headCount
		ifTrue: [self tally: anAmount negated.
			eachHerd := self leasesHeld add: #CattleOnFarm
							-> (assets at: #CattleOnFarm);
						 yourself.
			portion := anAmount * ((q1 asOrderedCollection add: q2;
							 yourself) / headCount).
			portion select: [:a | a > 0].	
			ix := 0.
			eachHerd
				do: [:each | each cost: each cost
							+ (portion at: (ix := ix + 1))]].
	^ headCount! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:57'!
ifFruit
	^ 0 < (assets at: #Cherries) quantity! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:58'!
ifHarvester
	^ 0 < (assets at: #Harvester) quantity! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:58'!
ifHarvester: anAmount 
	self IfHarvester
		ifTrue: [self tally: anAmount.
			(assets at: #Harvester)
				gross: anAmount + (assets at: #Harvester) gross]! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 1/15/2014 17:58'!
ifTractor
	^ 0 < (assets at: #Tractor) quantity! !

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

!Farmer methodsFor: 'space-related' stamp: 'dhn 11/23/2014 12:02'!
interest: aRate
	| int |
	0 > self debt ifTrue: [
		int := (aRate * self debt negated) roundTo:  1.
		self tally: int negated.
		self paidInterest: 1 + self paidInterest.
		self interestPd: int + self interestPd.
		]
	ifFalse: [self avoidedDebt: 1 + self avoidedDebt].
! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/16/2014 18:56'!
leasesHeld
	"Answer the cattle leases held by self"
	| leases |
	leases := assets
				select: [:ea | ea class inheritsFrom: CattleOnLease].
	^ leases select: [:each | 0 < (each quantity)].
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 17:58'!
maggotFly: anAmount 
	| q1 q2 c1 c2 |
	q1 := (assets at: #Cherries) quantity // 2.
	q2 := (assets at: #Apples) quantity // 2.
	c1 := anAmount * q1.
	c2 := anAmount * q2.
	self allocateFruitCost: c1 + c2! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 11/23/2014 12:02'!
missedCattleHarvest
	| eachHerd |
	eachHerd := assets
				select: [:ea | ea class inheritsFrom: Livestock].
	eachHerd
		do: [:each | each missed: each missed + 1].
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 18:00'!
noHarvester: anAmount 
	0 < (assets at: #Harvester) quantity
		ifTrue: [(assets at: #Harvester)
				costAvoided: anAmount + (assets at: #Harvester) costAvoided]
		ifFalse: [self tally: anAmount negated.
			(assets at: #Harvester)
				cost: anAmount + (assets at: #Harvester) cost.
			self allocateHarvesterLease: anAmount]! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/15/2014 18:00'!
noTractor: anAmount 
	0 < (assets at: #Tractor) quantity
		ifTrue: [(assets at: #Tractor)
				costAvoided: anAmount + (assets at: #Tractor) costAvoided]
		ifFalse: [self tally: anAmount negated.
			(assets at: #Tractor)
				cost: anAmount + (assets at: #Tractor) cost.
			self allocateTractorLease: anAmount]! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 12/7/2011 16:16'!
offFarm
	"Answer the value of offFarm"
	offFarm ifNil: [offFarm := 0].
	^ offFarm! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 12/7/2011 16:15'!
offFarm: anObject
	"Set the value of offFarm"

	offFarm := anObject! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 1/15/2014 18:01'!
oilBucksFor: aSymbol 
	| delta |
	delta := 100 * (assets at: aSymbol) quantity.
	(assets at: aSymbol)
		gross: delta + (assets at: aSymbol) gross.
	^ (assets at: aSymbol) quantity! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 1/19/2012 18:51'!
oilLease: aParm 
	| acres col |
	acres := 0.
	col := {#Hay. #Cherries. #Wheat.}. 
	"Cherries and Wheat account for Apples and Corn"
	col
		do: [:a | acres := acres + (self oilBucksFor: a)].
	self tally: 100 * acres! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 9/7/2017 17:19:00'!
optionDescription: aString 
	"Report the effect of buying the option named aString"
	| cost down |
	
	cost _ Compiler evaluate: aString , ' optionCost'.
	down _ cost * 0.2.
	^ String new writeStream
		nextPutAll: (Compiler evaluate: aString , ' optionText'); newLine; newLine;
		 nextPutAll: 'Exercising this option requires $';
		 nextPutAll: down asInteger printStringWithCommas;
		 nextPutAll: ' cash'; newLine;
		 nextPutAll: 'and a loan for $';
		 nextPutAll: (cost - down) asInteger printStringWithCommas;
		 contents! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/10/2011 13:04'!
options
	"Answer the value of options"

	^ options! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/10/2011 13:13'!
options: anOrderedCollection
	"Set the value of options"

	options := anOrderedCollection! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 11/26/2013 10:55'!
playerDebtLimit
	^ FarmingGame debtLimit! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 14:51'!
removeOptionAt: aName
	^ options
		remove: aName
		ifAbsent: [self halt];
		yourself! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 9/1/2017 14:06:41'!
reportYourself
	| str exp |
	exp := self outFlow negated.
	str := String new writeStream.
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
		ifTrue: [str nextPutAll: (self inFlow / exp printOn: str fractionDigits: 2) asString;
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
		 nextPutAll: self options size asString;
		 nextPutAll: ' options held';
		 newLine;
		 nextPutAll: self garnish asString;
		 nextPutAll: ': being garnished';
		 newLine;
		 nextPutAll: '$' , (exp / (self years + 1) roundTo:  1) printStringWithCommas;
		 nextPutAll: ' average yearly expense';
		 newLine;
		 nextPutAll: (self turns / (self years + 1) printOn: str fractionDigits:  1) asString;
		 nextPutAll: ' turns per year';
		 newLine;
		 nextPutAll: self years asString;
		 nextPutAll: ' full years farming';
		 newLine;
		contents! !

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

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/14/2014 08:45'!
sellAsset: aString for: aNumber 
	| lot subs |
	self tally: aNumber.
	subs := (Smalltalk at: aString asSymbol) subclasses.
	subs isEmpty
		ifTrue: [lot := assets at: aString.
			lot gross: lot gross + aNumber.
			lot quantity: lot quantity - lot class auctionQuantity]
		ifFalse: [subs
				do: [:each | 
					| n |
					n := assets at: each name asString.
					n gross: n gross + aNumber / subs size.
					n quantity: n quantity - each auctionQuantity]]! !

!Farmer methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 14:50'!
sellOption: aName for: aNumber 
	self tally: aNumber.
	^ self removeOptionAt: aName! !

!Farmer methodsFor: 'initialize-release' stamp: 'dhn 11/30/2014 09:52'!
setUpAssets
	^ Dictionary new
		add: #Hay->(Hay new quantity: 10; cost: 20000);
		add: #Wheat->(Wheat new quantity: 10; cost: 10000);
		add: #Corn->(Corn new quantity: 10; cost: 10000);
		add: #Cherries->Cherries new;
		add: #Apples->Apples new;
		add: #CattleOnFarm->CattleOnFarm new;
		add: #Ahtanum->Ahtanum new;
		add: #Rattlesnake->Rattlesnake new;
		add: #Cascade->Cascade new;
		add: #Toppenish->Toppenish new;
		add: #Tractor->Tractor new;
		add: #Harvester->Harvester new;
		yourself
	! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 11/23/2014 12:05'!
slaughterCows: aParm
	(assets at: #CattleOnFarm) quantity: 0.
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

!Farmer methodsFor: 'fate-related' stamp: 'dhn 11/23/2014 12:06'!
truckerStrike: aParm 
	| amt1 amt2 |
	amt1 := aParm * (assets at: #Cherries) quantity // 2.
	amt2 := aParm * (assets at: #Apples) quantity // 2.
	self allocateFruitCost: amt1 + amt2.
! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 8/30/2017 17:41:14'!
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
			h quantity: 10 + h quantity].
! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/1/2017 19:12:09'!
updateAsset: anAsset with: aRoll 
	| what amt yield tale fac rat normal |
	yield := 0.
	anAsset ~= #Livestock
		ifTrue: ["not #Livestock"
			self garnish
				ifTrue: [self garnishSpiel]
				ifFalse: [what := assets at: anAsset.
					amt := what quantity.
					yield := what class at: aRoll for: amt.
					normal := yield.
					yield > 0
						ifTrue: [fac := what factor.
							rat := what rate.
							yield := 0 max: yield * fac + (amt * rat).
							what gross: yield + what gross.
							what quality: aRoll + what quality.
							what count: 1 + what count.
							tale := 'Crop quality ' , aRoll asString, ' for ' , ('$' , yield asInteger printStringWithCommas) , '. Factor ' , fac asString, '. Rate ' , rat asString, '.
Normally $' , normal printStringWithCommas , '.'.
							GamePopUp inform: tale title: anAsset , ' quantity ' , amt asString]]]
		ifFalse: ["#Livestock"
			self garnish
				ifTrue: [self garnishSpiel]
				ifFalse: [yield := self updateCattleAsset: aRoll]].
	^ yield! !

!Farmer methodsFor: 'space-related' stamp: 'dhn 9/9/2017 20:10:16'!
updateCattleAsset: aRoll
	"Record the effect of harvesting cattle with  aRoll"
	| yield tale har fac ttl str q1 q2 eachHerd headCount |
	
	ttl _ 0.
	self garnish
		ifTrue: [GamePopUp inform: 'The IRS is garnishing your income.' title: 'Loss of Income']
		ifFalse: [q1 _ self cowsOnLeases.
			q2 := (assets at: #CattleOnFarm) quantity.
			headCount _ q1
						inject: q2
						into: [:a :b | a + b].
			0 < headCount
				ifTrue: [eachHerd _ self leasesHeld add: #CattleOnFarm
									-> (assets at: #CattleOnFarm);
								 yourself.
					eachHerd
						do: [:each | 
							fac _ each factor.
							yield _ fac
										* (Livestock at: aRoll for: each quantity).
							ttl _ ttl + yield.
							each gross: yield + each gross.
							each quality: aRoll + each quality.
							each count: 1 + each count]].
			str _ String new writeStream.
			str nextPutAll: 'Cow quality ' , aRoll asString, ' for ' , ('$' , ttl asInteger printStringWithCommas);
				 nextPutAll: '. Factor ' , fac asString;
				 newLine;
				 nextPutAll: 'Normally $' , (ttl / fac) asInteger printStringWithCommas , '.'.
			tale _ str contents.
			GamePopUp inform: tale title: 'Livestock quantity ' , headCount asString].
	har _ self mgr buttons submorphs
				detect: [:n | n label = 'Harvest']
				ifNone: [].
	har actionSelector: Farm harvestNormal.
	^ ttl! !

!Farmer methodsFor: 'accessing' stamp: 'dhn 8/31/2017 16:57:40'!
updateHistory
	"Change current history"
	
	history at: history size put: self netAssets! !

!Farmer methodsFor: 'fate-related' stamp: 'dhn 11/23/2014 12:06'!
wheatWeeds: aParm 
	(assets at: #Wheat)
		factor: 0.5 * (assets at: #Wheat) factor.
! !

!Farmer methodsFor: 'expense-related' stamp: 'dhn 1/15/2014 18:23'!
wireWorms: anAmount 
	| penalty |
	penalty := anAmount * (assets at: #Wheat) quantity.
	(assets at: #Wheat)
		cost: penalty + (assets at: #Wheat) cost.
	self tally: penalty negated! !

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

!Field methodsFor: 'as yet unclassified' stamp: 'dhn 8/29/2017 21:26:00'!
heading: string1 with: string2
	"Set the heading to string1, newLine, string2"
	| str |
	
	str := String new writeStream.
	str nextPutAll: string1; newLine;
		nextPutAll: string2.
	self heading: str contents! !

!Field methodsFor: 'accessing' stamp: 'dhn 8/30/2017 18:54:42'!
label
	"Answer the value of label"

	^ label! !

!Field methodsFor: 'accessing' stamp: 'dhn 8/30/2017 18:55:38'!
label: anObject
	"Set the value of label"

	label _ anObject! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 12/21/2013 11:17'!
assetLabel
	^ ' Auction of ' , self mgr currentPlayer identity , '''s Assets'! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/15/2014 15:00'!
assetPressed
	self listAssets.
	window model 
		 text1: '';
		 changed: #text1.
	window setLabel: self assetLabel.
	window model assetButton disableButton.
	mgr currentPlayer options notEmpty
		ifTrue: [window model optionButton enableButton]
		ifFalse: [window model optionButton disableButton]! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/8/2014 20:52'!
deleteAuction
	mgr enableAll: {'Auction'}.
	self restoreButtonState.
	window delete! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/8/2014 19:33'!
endAsset
	mgr enableAll: {'Auction'}.
	self deleteAuction.
! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 12/10/2013 20:22'!
initialize
	super initialize.
! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/15/2014 14:59'!
listAssets
	window model collection: mgr currentPlayer auctionable;
		 selectedItem: 0;
		 changed: #list;
		 showingAssets: true.
	window model soldButton actionSelector: #soldAsset.
	window model listHeading contents: 'ASSETS'! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/20/2014 12:10'!
listOptions
	| list |
	mgr currentPlayer options notEmpty
		ifTrue: [
			window model soldButton actionSelector: #soldOption.
			list := mgr currentPlayer options]
		ifFalse: [list := OrderedCollection new.].
	window model collection: list;
		 selectedItem: 0;
		 changed: #list;
		 showingAssets: false.
	window model listHeading contents: 'OPTIONS'! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 12/21/2013 11:18'!
optionLabel
	^ ' Auction of ' , self mgr currentPlayer identity , '''s Options'! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/15/2014 14:59'!
optionPressed
	self listOptions.
	window model 
		 text1: '';
		 changed: #text1.
	window setLabel: self optionLabel.
	window model optionButton disableButton.
	mgr currentPlayer assets notEmpty
		ifTrue: [window model assetButton enableButton]
		ifFalse: [window model assetButton disableButton]! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 1/12/2014 21:08'!
optionsOrAssetsToSell
	window model optionButton disableButton.
	mgr currentPlayer options isEmpty
		ifTrue: [window model assetButton disableButton.
			mgr currentPlayer assets isEmpty
				ifFalse: [self listAssets]]
		ifFalse: [self listOptions.
			window model assetButton enableButton].
! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/6/2014 14:41'!
sellAssets
	| xl xw |
	xl := FarmAuctionList new.
	xl chanter: self;
		 player: self mgr currentPlayer.
	xw := xl windowLabelled: self assetLabel for: self.
	xl buttonsPane addAllMorphs: xl choiceButtons.
	xl buttonsPane addAllMorphs: xl assetButtons.
	xw setWindowColor: self mgr currentPlayer tokenColor.
	xw openInWorld.
	xw extent: 450 @ 280.
	self mgr arena addMorph: xw.
	xw center: self mgr arena center.
	self window: xw.
	self listAssets! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/6/2014 15:02'!
showAssetAuction
	| xl xw |
	xl := FarmAuctionList new.
	xl chanter: self;
		 player: self mgr currentPlayer.
	xw := xl windowLabelled: self assetLabel for: self.
	xl buttonsPane addAllMorphs: xl assetButtons.
	xw setWindowColor: self mgr currentPlayer tokenColor.
	xw openInWorld.
	xw extent: 450 @ 280.
	self mgr arena addMorph: xw.
	xw center: self mgr arena center.
	self window: xw.
	self listAssets! !

!FarmAuctioneer methodsFor: 'as yet unclassified' stamp: 'dhn 10/6/2014 15:08'!
showOptionAuction
	| xl xw |
	xl := FarmAuctionList new.
	xl chanter: self;
		 player: self mgr currentPlayer.
	xw := xl windowLabelled: self optionLabel for: self.
	xl buttonsPane addAllMorphs: xl assetButtons.
	xw setWindowColor: self mgr currentPlayer tokenColor.
	xw openInWorld.
	xw extent: 450 @ 280.
	self mgr arena addMorph: xw.
	xw center: self mgr arena center.
	self window: xw.
	self listOptions! !

!FarmAuctioneer class methodsFor: 'as yet unclassified' stamp: 'dhn 12/10/2013 20:22'!
bidBump
	^ 1000 * #(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)! !

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
