local GSRequest = require("gamesparks.GSRequest")
local SocialStatusResponse = require("gamesparks.responses.SocialStatusResponse")

local SocialStatusRequest = {}
local SocialStatusRequest_mt = {__index = SocialStatusRequest}

function SocialStatusRequest.new(gs)
  local instance = GSRequest.new(gs)
 
  instance.data["@class"] = ".SocialStatusRequest"
  
  return setmetatable(instance, SocialStatusRequest_mt)
end

setmetatable(SocialStatusRequest, {__index = GSRequest})

function SocialStatusRequest:setTimeoutSeconds(timeoutSeconds)
  if timeoutSeconds == nil then
    timeoutSeconds = 10
  end
  
  self.timeoutSeconds = timeoutSeconds
end

function SocialStatusRequest:send(callback)
  GSRequest.send(self, function(message)
    if callback ~= nil then
      callback(SocialStatusResponse.new(message))
    end
  end)
end

	
function SocialStatusRequest:setScriptData(scriptData)
  self:setAttribute("scriptData", scriptData)
end
	

return SocialStatusRequest
