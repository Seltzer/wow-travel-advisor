-- Initialise TA addon/module
TA = LibStub('AceAddon-3.0'):NewAddon('Travel Advisor')

-- Set up TA submodule stubs
TA.LuaUtils = {}

-- Forward declare private functions
local setUpSlashCommand, hasItem




-----------------------------------------------------------------------------------------------------------------------
-- Public functions, exposed via TA module
-----------------------------------------------------------------------------------------------------------------------

function TA.OnLoad() 
   print('TA.OnLoad')
   
   setUpSlashCommand()
end


-------------------------------------------------------------------------------
-- Gets a table representing all of the travel-relevant items which the player 
-- has on them.
-------------------------------------------------------------------------------
function TA.GetTravelItemsOnPlayer()
   local inv = { }

   inv.gadgetzan = hasItem(18986)

   return inv
end


function TA.OnSlashInvocation()
   print('Welcome to TA!')

   local inv = TA.GetTravelItemsOnPlayer()

   TA.LuaUtils.PrintTable(inv)
end





-----------------------------------------------------------------------------------------------------------------------
-- Private functions
-----------------------------------------------------------------------------------------------------------------------
setUpSlashCommand = function ()
   SLASH_TRAVELADVISOR1, SLASH_TRAVELADVISOR2 = '/ta', '/travel-advisor'

   function SlashCmdList.TRAVELADVISOR(msg, editbox)
      TA.OnSlashInvocation()
   end
end


hasItem = function(itemId)
   return GetItemCount(itemId, false, false) > 0
end
