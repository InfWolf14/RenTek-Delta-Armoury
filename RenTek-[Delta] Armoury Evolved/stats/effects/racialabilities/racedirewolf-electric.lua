function init()
  baseValue2 = config.getParameter("energyBonus",0)*(status.resourceMax("energy"))
  
  effect.addStatModifierGroup({
    {stat = "maxEnergy", amount = baseValue2 },
    {stat = "physicalResistance", amount = 0.0},
    {stat = "fireResistance", amount = -0.1},
    {stat = "iceResistance", amount = 0.1},
    {stat = "electricResistance", amount = 0.3},
	{stat = "electricStatusImmunity", amount = 1},
    {stat = "poisonResistance", amount = -0.0},
    {stat = "shadowResistance", amount = -0.3},
	{stat = "radioactiveResistance", amount = 0.1},
	{stat = "cosmicResistance", amount = 0.1}
  })
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(10)
  
end

function update(dt)
	
end

function uninit()
  
end



