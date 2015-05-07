-----------------------------------------------------------------------------------------
--
-- Simple Flashcards Mobile Application
-- written in Corona SDK and Lua
-- by Honey Silvas
-- http://zendey.com
-- honeysilvas@gmail.com
--
-----------------------------------------------------------------------------------------

-----------------------------------------------------
--
-- words table
--
-----------------------------------------------------

	local words = { "mama", "papa", "baby", 
			"eat", "sleep", "more", "done",
			"open", "close", 
			"hi", "bye",
			"water", "milk",  
			"up", "down",
			"in", "out",
			"yes", "no", 
			"stop", "go", "walk", "kiss", "hug",
			"play", 
			"car", "bus", "boat",
			"book", "ball", "bat", "hat",
			"red", "blue", "green", "black", "white",
			"apple", "grape",  
			"dog", "cat", "cow", "goat", "pig", "egg",
			"duck", "fish", "frog",
			"ant", "bee", "worm",
			"bear", "tiger", "lion",  
			"sun", "moon", "star", "sky",
			"tree", "leaf", 
			"happy", "sad",		
			"table", "chair",
			"hand", "foot", "nose", "mouth", "ear", "eye" }

-------------------------------------------------------
--
-- Variable Settings
--
-------------------------------------------------------

	-- Screen Size
	local screenX = display.contentWidth * 0.5
	local screenY = display.contentHeight * 0.5

	-- Font
	local fontSize = screenX * 0.5
	local fontFace = "Century Gothic"

	-- Counter	
	local i = 1
	local previousi

	-- Background
	display.setDefault("background", 1,1,1)
	
	local myTextObject = display.newText("Tap to start", screenX, screenY, fontFace, fontSize / 1.5)
	myTextObject:setFillColor(0,0,0)

local function displayCard()

	myTextObject:removeSelf()
	while i == previousi do
		i = math.random( 1, table.maxn( words ) )
	end
	
	myTextObject = display.newText( words[i], screenX, screenY, fontFace, fontSize )
	myTextObject:setFillColor( 0,0,0 )

	previousi = i
	
end

display.currentStage:addEventListener( "tap", displayCard )