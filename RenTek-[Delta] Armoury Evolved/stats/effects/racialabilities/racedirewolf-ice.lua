function init()
  
  effect.addStatModifierGroup({
    {stat = "physicalResistance", amount = 0.1},
    {stat = "fireResistance", amount = -0.3},
    {stat = "iceResistance", amount = 0.3},
	{stat = "iceStatusImmunity", amount = 1},
    {stat = "iceslipImmunity", amount = 1},
    {stat = "snowslowImmunity", amount = 1},
    {stat = "slushslowImmunity", amount = 1},
    {stat = "electricResistance", amount = -0.1},
    {stat = "poisonResistance", amount = 0.0},
    {stat = "shadowResistance", amount = 0.0},
	{stat = "radioactiveResistance", amount = -0.1},
	{stat = "cosmicResistance", amount = 0.1}
  })
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(10)
  
end

function update(dt)
	
end

function uninit()
  
end



