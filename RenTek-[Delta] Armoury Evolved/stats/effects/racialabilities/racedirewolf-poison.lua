function init()

  
  effect.addStatModifierGroup({
    {stat = "physicalResistance", amount = 0.1},
    {stat = "fireResistance", amount = -0.3},
    {stat = "iceResistance", amount = -0.1},
    {stat = "electricResistance", amount = 0.0},
    {stat = "poisonResistance", amount = 0.3},
	{stat = "poisonStatusImmunity", amount = 1},
	{stat = "beestingImmunity", amount = 1},
    {stat = "shadowResistance", amount = 0.1},
	{stat = "radioactiveResistance", amount = 0.1},
	{stat = "cosmicResistance", amount = 0.0}
  })
  
  local bounds = mcontroller.boundBox()
  script.setUpdateDelta(10)
  
end

function update(dt)

end

function uninit()
  
end



