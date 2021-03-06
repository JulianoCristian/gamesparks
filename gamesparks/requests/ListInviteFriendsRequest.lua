local GSRequest = require("gamesparks.GSRequest")
local ListInviteFriendsResponse = require("gamesparks.responses.ListInviteFriendsResponse")

local ListInviteFriendsRequest = {}
local ListInviteFriendsRequest_mt = {__index = ListInviteFriendsRequest}

function ListInviteFriendsRequest.new(gs)
  local instance = GSRequest.new(gs)
 
  instance.data["@class"] = ".ListInviteFriendsRequest"
  
  return setmetatable(instance, ListInviteFriendsRequest_mt)
end

setmetatable(ListInviteFriendsRequest, {__index = GSRequest})

function ListInviteFriendsRequest:setTimeoutSeconds(timeoutSeconds)
  if timeoutSeconds == nil then
    timeoutSeconds = 10
  end
  
  self.timeoutSeconds = timeoutSeconds
end

function ListInviteFriendsRequest:send(callback)
  GSRequest.send(self, function(message)
    if callback ~= nil then
      callback(ListInviteFriendsResponse.new(message))
    end
  end)
end

	
function ListInviteFriendsRequest:setScriptData(scriptData)
  self:setAttribute("scriptData", scriptData)
end
	

return ListInviteFriendsRequest
