local placeid = game.PlaceId
if placeid == 6055846199 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/jonascool9/ScoobsScripts/main/CarDrivingIndonesia.Lua"))()
else
  game.StarterGui:SetCore("SendNotification", {
	Title = "Error";
	Text = "cant find script for game with id"..placeid;
	Duration = 6;
	Callback = true;
	Button1 = "ok";
})

  end
