function init()
  entity.setInteractive(true)
end

function onInteraction(args)
    return { "ShowPopup", { message = "Testing." } }
end
