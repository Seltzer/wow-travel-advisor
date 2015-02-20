-----------------------------------------------------------------------------------------------------------------------
-- TA.LocationGraph type
-----------------------------------------------------------------------------------------------------------------------

function TA.LocationGraph:Test()
   print('test')
end



-----------------------------------------------------------------------------------------------------------------------
-- TA.LocationGraph - private members
-----------------------------------------------------------------------------------------------------------------------
TA.LocationGraph.nodes = {
   -- Gorgrond
   [949] = {	
      Out = {
	 TA.LocationGraph.arcs[1]
      }
   }


   -- Frostwall
   [976] = {	
      Out = {
	 TA.LocationGraph.arcs[1]
      }
   }
}


-- TODO: Figure out how to properly do enums
TA.LocationGraph.ArcTypes = {
   FlightPath = 'FlightPath',
   Walk = 'Walk'
}


TA.LocationGraph.arcs = {
   -- From Frostwall to Gorgrond
   [1] = {
      Type = TA.LocationGraph.ArcTypes.FlightPath,
      Time = 120,
      Nodes = { 949, 976 }
   }
}
