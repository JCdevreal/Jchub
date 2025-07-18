if game.PlaceId == 17282136897 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/JCdevreal/Jchub/refs/heads/main/Doors_sandbox.lua"))()
if game.PlaceId == 110258689672367 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/JCdevreal/Jchub/refs/heads/main/Doors.lua"))()
if game.PlaceId == 6839171747 then
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "JCHUB", -- Required
	Text = "Sorry, Currently we only support the 'Hotel-' modifier currently", -- Required
	Icon = "rbxassetid://1234567890" -- Optional
})
