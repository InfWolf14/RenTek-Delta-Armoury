function init()
  baseValue = config.getParameter("healthBonus",0)*(status.resourceMax("health"))
  baseValue2 = config.getParameter("energyBonus",0)*(status.resourceMax("energy"))
  self.gritBoost = config.getParameter("gritBonus",0)
  
  effect.addStatModifierGroup({
    {stat = "maxHealth", amount = baseValue },
    {stat = "maxEnergy", amount = baseValue2 },
    {stat = "powerMultiplier", baseMultiplier = 1.10},
	{stat = "shieldRegen", baseMultiplier = self.gritBoost },
	{stat = "perfectBlockLimitRegen", amount = 1},
    {stat = "physicalResistance", amount = 0.2},
    {stat = "fireResistance", amount = 0.3},
	{stat = "fireStatusImmunity", amount = 1},
    {stat = "iceResistance", amount = 0.1},
    {stat = "electricResistance", amount = 0.3},
	{stat = "electricStatusImmunity", amount = 1},
    {stat = "poisonResistance", amount = 0.1},
    {stat = "shadowResistance", amount = -0.2},
	{stat = "radioactiveResistance", amount = -0.2},
	{stat = "cosmicResistance", amount = -0.2},
	{stat = "fallDamageMultiplier", effectiveMultiplier = 0.10},
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
