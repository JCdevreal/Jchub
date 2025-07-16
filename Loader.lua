if game.PlaceId == 17282136897 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/JCdevreal/Jchub/refs/heads/main/Doors_sandbox.lua"))()
if game.PlaceId == 17729873503 then
print("working");
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "JCHUB", -- Required
	Text = "JCHUB does not support this game yet!", -- Required
	Icon = "nil" -- Optional
})
