-----------------------------------------------------------------------------------------------------------------------
-- TA.LocationGraph type
-----------------------------------------------------------------------------------------------------------------------

function TA.LocationGraph:new(o)
   o = o or {}
   setmetatable(o, self)

   self.__index = self

   return o
end


function TA.LocationGraph:Test()
   print('test')
end


function TA.LocationGraph:Test2()
   return self.arcs[1].time
end


function TA.LocationGraph:ComputeDistance(from, to)
   local source = self.nodes[from];

   if (source == nil) then
      return nil
   end

   local startRoute = {
      parent = nil,
      time = 0,
      arcs = {},
      current = source
   }

   for outArc in source.Out do
      for dest in self.arcs[outArc].Nodes do
	 if (dest == to) then
	    return outArc.Time
	 end
      end
   end

   return nil
end



-----------------------------------------------------------------------------------------------------------------------
-- TA.LocationGraph - private methods
-----------------------------------------------------------------------------------------------------------------------
function TA.LocationGraph:Branch(route)
   for outArc in route.current.Out do
      

   end

end


function TA.LocationGraph:GetArcs(route)
   local arcs = {}

   local parent = route.parent

   while parent ~= nil do
      for a in arcs do
	 insert(arcs, a)
      end

      parent = parent.parent
   end

   return arcs
end




-----------------------------------------------------------------------------------------------------------------------
-- TA.LocationGraph - private fields
-----------------------------------------------------------------------------------------------------------------------

-- Define nodes in our graph, in adjacency list fashion. Note:
--   * The IDs are WoW map IDs
TA.LocationGraph.nodes = {
   -- Spires of Arak
   [948] = {
      Out = { 4 }
   },

   -- Gorgrond
   [949] = {	
      Out = { 1, 3 }
   },

   -- Frostwall
   [976] = {	
      Out = { 1, 2, 4 }
   },

   -- Warspear
   [1011] = {
      Out = { 2, 3 }
   }
}


-- TODO: Figure out how to properly do enums
TA.LocationGraph.ArcTypes = {
   FlightPath = 'FlightPath',
   Walk = 'Walk'
}


-- Define arcs in our graph. Note:
--   * Certain types of arcs are assumed to be bidirectional (e.g. flight paths and walking)
--   * Time in seconds
TA.LocationGraph.arcs = {
   -- From Frostwall to Gorgrond
   [1] = {
      Type = TA.LocationGraph.ArcTypes.FlightPath,
      Time = 60,
      Nodes = { 949, 976 }
   },

   -- From Warspear to Frostwall
   [2] = {
      Type = TA.LocationGraph.ArcTypes.FlightPath,
      Time = 260,
      Nodes = { 1011, 976 }
   },

   -- From Warspear to Gorgrond
   [3] = {
      Type = TA.LocationGraph.ArcTypes.FlightPath,
      Time = 200,
      Nodes = { 949, 1011 }
   },

   -- From Spires of Arak to Warspear
   [3] = {
      Type = TA.LocationGraph.ArcTypes.FlightPath,
      Time = 175,
      Nodes = { 948, 1011 }
   }




}
