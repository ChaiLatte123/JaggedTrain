util.AddNetworkString("Train_Journey");
util.AddNetworkString("Open_Train_Vgui");

net.Receive("Train_Journey", function(len, ply)
	ply:ChatPrint("Teleporting...");
	ply:SetPos(Vector(17, 103, -12735));
end)

hook.Add("PlayerUse", "UseHook", function(ply, ent)
	if (ent:GetClass() == "npc_monk") then
		net.Start("Open_Train_Vgui");
		net.Send(ply);
	end
end)
