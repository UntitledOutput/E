local DataStoreService = game:GetService("DataStoreService")
local DataStore = DataStoreService:GetDataStore("PlayerData")

function getData(key)
	local getSuccess, currentGold = pcall(function()
		return DataStore:GetAsync(key)
	end)
	if getSuccess then
		return currentGold
	else
		return false
	end
end

function saveData(key, data)
	local setSuccess, errorMessage = pcall(function()
		DataStore:SetAsync(key, data)
	end)
	if not setSuccess then
		warn(errorMessage)
	end
end

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder", player)
	leaderstats.Name = "leaderstats"
	
	local Data = getData(player.UserId.."-Stats")
	local Coins = Instance.new("IntValue", leaderstats)
	Coins.Name = "Coins"
	
	if Data then
		Coins.Value = Data.Coins
	end
end)