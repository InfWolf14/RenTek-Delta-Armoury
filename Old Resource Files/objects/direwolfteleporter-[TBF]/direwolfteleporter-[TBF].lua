require "/scripts/util.lua"

function init()
  self.detectArea = config.getParameter("detectArea")
  self.detectArea[1] = object.toAbsolutePosition(self.detectArea[1])
  self.detectArea[2] = object.toAbsolutePosition(self.detectArea[2])

  animator.setAnimationState("teledoor", "off")
  object.setLightColor({0, 0, 0, 0})

end

function update(dt)
  if self.radioMessage ~= nil then
    self.radioMessage(dt)
  end

  local players = world.entityQuery(self.detectArea[1], self.detectArea[2], {
      includedTypes = {"player"},
      boundMode = "CollisionArea"
    })

  if #players > 0 and animator.animationState("teledoor") == "off" then
    animator.setAnimationState("teledoor", "open")
    animator.playSound("on");
    object.setLightColor(config.getParameter("lightColor", {255, 255, 255}))
  elseif #players == 0 and animator.animationState("teledoor") == "on" then
    animator.setAnimationState("teledoor", "close")
    animator.playSound("off");
    object.setLightColor({0, 0, 0, 0})
  end
end