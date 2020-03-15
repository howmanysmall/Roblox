-- This function is monkey patched to return MockDataStoreService during tests
local IsPlayer = {}

local typeof = function(object)
	local realTypeOf = typeof(object)
	if realTypeOf == "table" then
		if object.__type then
			return object.__type
		else
			return realTypeOf
		end
	else
		return realTypeOf
	end
end

function IsPlayer.Check(object)
	return typeof(object) == "Instance" and object.ClassName == "Player"
end

return IsPlayer