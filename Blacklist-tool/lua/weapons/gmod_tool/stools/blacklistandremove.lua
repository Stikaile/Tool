/*==============================================================================================
	Blacklist & Remove created by Name.
	http://steamcommunity.com/profiles/76561198037759019
==============================================================================================*/

TOOL.Name								= "Blacklist and Remove"
TOOL.Category							= "Other"
TOOL.Command 							= nil
TOOL.ConfigName 						= nil

/*==============================================================================================
	Server
==============================================================================================*/

if SERVER then
	
	function TOOL:LeftClick(Trace)
		
		if not IsValid(Trace.Entity) then return end
		
		RunConsoleCommand("FPP_AddBlockedModel", Trace.Entity:GetModel(), Trace.Entity:EntIndex())
		Trace.Entity:Remove()
		
		return true
	end
	
end


/*==============================================================================================
	Client
==============================================================================================*/

if CLIENT then
	
	language.Add( "tool.blacklistandremove.name", "Blacklist & Remove" )
	language.Add( "tool.blacklistandremove.desc", "Blacklists and removes prop" )
	language.Add( "tool.blacklistandremove.help", "Aim at the prop and use the tool." )
	language.Add( "tool.blacklistandremove.0", 	  "Primary: Add prop you looking at to blacklist and removes its" )
	
	
	function TOOL.BuildCPanel(CPanel)
		
		CPanel:AddControl("Label", { Text = "This tool allows you to blacklist the model of prop you are looking that and automatically removes it." })
		
	end
end