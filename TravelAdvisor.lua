TA = LibStub('AceAddon-3.0'):NewAddon('Travel Advisor')



local function hasItem(itemId)
   return GetItemCount(itemId, false, false) > 0
end


function TravelAdvisor_OnLoad()
   print("Hello, World!");
end


function TA.TestFunc()
   print('TravelAdvisoraaa.TestFunc')
end



-----------------------------------------------------------------------------
--
-----------------------------------------------------------------------------
-- function TravelAdvisor.GetTravelInventory()
--    print('entry');
--    local inv = { }

   
--    print('hello')

--    -- 18986
--    inv.gadgetzan = hasItem(18986)

--    LuaUtils.PrintTable(inv)
-- end





SLASH_TRAVELADVISOR1, SLASH_TRAVELADVISOR2 = '/ta', '/travel-advisor';
function SlashCmdList.TRAVELADVISOR(msg, editbox)
   print("Welcome to TA!");

   test()
   TA.TestFunc()
   --TravelAdvisor.GetTravelInventory();
end


