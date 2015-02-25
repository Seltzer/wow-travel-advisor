TA = {}
TA.LocationGraph = {}

require "LocationGraph"

print(TA.LocationGraph.arcs[1].Time)

local k = TA.LocationGraph:new()

k.arcs[1].Time = 70
print(TA.LocationGraph.arcs[1].Time)
print(k.arcs[1].Time)

k.Test()


