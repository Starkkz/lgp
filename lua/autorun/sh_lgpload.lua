LGP = {}
LGP.__index = LGP

function LGP.Print(Message)
	PrintMessage(HUD_PRINTTALK, "[LGP] "..Message)
end

if CLIENT then
	include("lgp/cl_lgpeditor.lua")
	include("lgp/cl_lgphooks.lua")
elseif SERVER then
	AddCSLuaFile("lgp/cl_lgpeditor.lua")
	AddCSLuaFile("lgp/cl_lgphooks.lua")

	LGP.InitialUploadSpeed = 150

	include("lgp/sv_join.lua")
	include("lgp/sv_lgpfunctions.lua")
end

