function init()
  baseValue = config.getParameter("healthBonus",0)*(status.resourceMax("health"))
  baseValue2 = config.getParameter("energyBonus",0)*(status.resourceMax("energy"))
  
  effect.addStatModifierGroup({
    {stat = "foodDelta", baseMultiplier = 1.08268},
    {stat = "maxHealth", amount = baseValue },
    {stat = "maxEnergy", amount = baseValue2 },
	{stat = "fallDamageMultiplier", effectiveMultiplier = 0.10},
    {stat = "powerMultiplier", baseMultiplier = 1.30}
  })
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(10)
  
end

function update(dt)
	mcontroller.controlModifiers({
			 speedModifier = 0.95,
			airJumpModifier = 0.95,
			liquidForce = 20.0
		})
end

function uninit()
  
end



