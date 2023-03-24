local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()


local Window = Rayfield:CreateWindow({
	Name = "Dinner Invite Manager",
	LoadingTitle = "Dinner Invite",
	LoadingSubtitle = "Invitor",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = "SlegFunky", -- Create a custom folder for your hub/game
		FileName = "Sleg"
	},
	Discord = {
		Enabled = false,
		Invite = "N/A", -- The Discord invite code, do not include discord.gg/
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sleg Protection System",
		Subtitle = "Key System",
		Note = "Sleg should have given you a key",
		FileName = "SlegKey",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "MipIsAFurry"
	}
})

local Tab = Window:CreateTab("Invite Manager", 4483362458)

local Input = Tab:CreateInput({
	Name = "Add to Whitelist",
	PlaceholderText = "UserID",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		game.ReplicatedStorage.TableControl:FireServer(Text,908)
	end,
})

local Input = Tab:CreateInput({
	Name = "Remove from Whitelist",
	PlaceholderText = "UserID",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
    		game.ReplicatedStorage.TableControl:FireServer(Text,809)
	end,
})
