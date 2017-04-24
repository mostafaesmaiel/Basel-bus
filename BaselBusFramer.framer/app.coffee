# This imports all the layers for "final-version-framer" into finalVersionFramerLayers2

# This imports all the layers for "final-version-framer" into finalVersionFramerLayers1

# This imports all the layers for "final-version-framer" into finalVersionFramerLayers

Framer.Defaults.Animation = curve: "easeInOut()"


BaselBus = Framer.Importer.load "imported/final-version-framer"

Framer.Device.background.image = "http://www.michaeltaylor.ca/bus-ch/basel/basel-828-mt.jpg"


# line animation 
BaselBus.Saved_Stations.on Events.Click, -> 
	BaselBus.Line.animate
		properties: 
			x: 650
		time: 0.4
	page.snapToPage(baselBusScroll2, true)

BaselBus.StationsTab.on Events.Click, -> 
	BaselBus.Line.animate
		properties: 
			x: 0
		time: 0.4			
	page.snapToPage(stationsTabScroll, true)

page = new PageComponent 
	width: Framer.Device.screen.width
	height: (Screen.height - BaselBus.Line.y - 20 )
	scrollVertical: false
	scrollHorizontal: true
	borderRadius: 6
page.y = BaselBus.Line.y + 10 

page.snapToNextPage()


stationsTabScroll = new ScrollComponent
	width: Screen.width
	height: ( Screen.height - BaselBus.Line.y - 10 )
	contentInset: 
		top: 20
	scrollHorizontal:  false
BaselBus.Scroll.superLayer = stationsTabScroll.content

stationsTabScroll.superLayer = page.content

baselBusScroll2 = new ScrollComponent
	width: Screen.width
	height: ( Screen.height - BaselBus.Line.y - 10 )
	contentInset: 
		top: 20
	scrollHorizontal:  false
BaselBus.Scroll2.superLayer = baselBusScroll2.content

page.addPage(baselBusScroll2)

page.on "change:currentPage", ->
	currentIndex = page.horizontalPageIndex(page.currentPage)
	if currentIndex is 1
		BaselBus.Line.animate
			properties: 
				x: 650
			time: 0.4
	if currentIndex is 0
		BaselBus.Line.animate
			properties: 
				x: 0
			time: 0.4		
	

liveBusStationLayerBlackOverlay = new Layer
	width: Screen.width
	height: Screen.height
	y: Screen.height
	backgroundColor: "rgba(0, 0, 0, 0.7)"

# 	image: BaselBus.LiveBusView.image
liveBusScroll = new ScrollComponent
	width: Screen.width
	height: Screen.height
	y: Screen.height
	contentInset: 
		top: 20
	scrollHorizontal:  false
BaselBus.LiveBusView.superLayer = liveBusScroll.content

BaselBus.Group_1_copy_2.on Events.Click, -> 
	liveBusScroll.animate
		properties: 
			y: 700
		curve: "spring(400,35,0)"
		
		liveBusStationLayerBlackOverlay.animate
			properties: 
				y: 0
			curve: "spring(400,35,0)"

liveBusStationLayerBlackOverlay.on Events.Click, -> 
	liveBusScroll.animate
		properties: 
			y: Screen.height
		curve: "spring(150,35,0)"
	liveBusStationLayerBlackOverlay.animate
		properties: 
			y: Screen.height
		curve: "spring(200,35,0)"
