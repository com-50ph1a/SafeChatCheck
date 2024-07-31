game.Players.PlayerAdded:Connect(function(plr)
	local policyInfo = game:GetService("PolicyService"):GetPolicyInfoForPlayerAsync(plr).AreAdsAllowed -- Gets the policy service and checks if the users under 13 or not
	print(plr.Name) -- Prints the players username
	print(policyInfo) -- Prints a Bool Value
	if not policyInfo then -- If they have safechat
		plr:Kick(plr.name.. ": Hi (+)")

	else -- If they dont have safe chat
		plr:Kick(plr.name..": Hi. (-)")
	end -- Ends the if
	
end) -- Ends the function
