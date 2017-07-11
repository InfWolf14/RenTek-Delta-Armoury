function init()
  
  effect.addStatModifierGroup({
    {stat = "erchiusImmunity", amount = 1},
    {stat = "physicalResistance", amount = 0.1},
    {stat = "fireResistance", amount = -0.1},
    {stat = "iceResistance", amount = -0.1},
    {stat = "electricResistance", amount = -0.1},
    {stat = "poisonResistance", amount = 0.1},
    {stat = "shadowResistance", amount = 0.3},
	{stat = "radioactiveResistance", amount = 0.1},
	{stat = "cosmicResistance", amount = -0.2}
  })
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(10)
  
end

function update(dt)

end

function uninit()
  
end



