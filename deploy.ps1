$wowAddonBase = "C:\Program Files (x86)\World of Warcraft\Interface\AddOns\TravelAdvisor\"

rm -R "$wowAddonBase*"

copy .\TravelAdvisor.toc $wowAddOnBase
copy .\TravelAdvisor.xml $wowAddOnBase
copy .\TravelAdvisor.lua $wowAddOnBase
copy .\LuaUtils.lua $wowAddOnBase
copy .\LocationGraph.lua $wowAddOnBase
copy .\lib $wowAddOnBase
