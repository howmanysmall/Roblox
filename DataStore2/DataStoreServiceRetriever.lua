-- This function is monkey patched to return MockDataStoreService during tests
local DataStoreService =
	script.Parent.Parent:FindFirstChild("DataStoreService") and require(script.Parent.Parent.DataStoreService)
	or game:GetService("DataStoreService")

local DataStoreServiceRetriever = {}

function DataStoreServiceRetriever.Get()
	return DataStoreService
end

return DataStoreServiceRetriever
