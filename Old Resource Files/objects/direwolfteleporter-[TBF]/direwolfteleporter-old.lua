require "/scripts/vec2.lua"
ohSnap = false

-- i really have no idea what im actually doing with this, i hate trying to write .lua files.
-- assuming this works as intended, the animation should play when a player goes near.
-- the door should open and wait, then close when a player moves away and return to idle.
-- the chance of this being useless is high... someone can do better... this was a slapjob...

function init()
-- Animation related
  animLock = false
  isopen = false
  idleTimer = 0
end

function init(virtual)
  if not virtual then
    self.detectArea = config.getParameter("detectArea")
  end
  initHook()
end

function update(dt)
    if animLock == false then
	  animator.setAnimationState("bodyState", "waiting")
	  idleTimer = 0
	  isopen = false
		end
	  end

function update(args)

  local players = world.entityQuery( object.position(), 7, {
      includedTypes = {"player"},
      boundMode = "CollisionArea"
    })
	if #players > 0 and not ohSnap then

		animator.setAnimationState("bodyState", "idle")
		isopen = false
	  else
		animator.setAnimationState("bodyState", "unlocking")
		isopen = true
	  end
	  ohSnap = true

	elseif #players == 0 and ohSnap then
	  ohSnap = false

	  if #players > 0 and isopen then
	  animator.setAnimationState("bodyState", "notopen")
	  isopen = false
	end
end

function initHook() end
function updateHook() end