require("/scripts/vec2.lua")
local fuoldInit = init
local fuoldUpdate = update
local fuoldUninit = uninit

function init()
  fuoldInit()
  self.lastYPosition = 0
  self.lastYVelocity = 0
  self.fallDistance = 0
  local bounds = mcontroller.boundBox() --Mcontroller for movement
end

function update(dt)
  fuoldUpdate(dt)

	--Direwolf
	if world.entitySpecies(entity.id()) == "direwolf" then
		status.addEphemeralEffect("racedirewolf",math.huge)
		status.addEphemeralEffect("starvingedge",math.huge)
	end
	
	--Direwolf
	if world.entitySpecies(entity.id()) == "rentek" then
		status.addEphemeralEffect("racerentek",math.huge)
		status.addEphemeralEffect("starvingedge",math.huge)
	end
  
    status.removeEphemeralEffect("weak_fire")
    status.removeEphemeralEffect("weak_ice")
    status.removeEphemeralEffect("weak_poison")
    status.removeEphemeralEffect("weak_physical")
    status.removeEphemeralEffect("weak_shadow")
    status.removeEphemeralEffect("weak_electric")
	
end
