local GSRequest = require("gamesparks.GSRequest")
local GetUploadedResponse = require("gamesparks.responses.GetUploadedResponse")

local GetUploadedRequest = {}
local GetUploadedRequest_mt = {__index = GetUploadedRequest}

function GetUploadedRequest.new(gs)
  local instance = GSRequest.new(gs)
 
  instance.data["@class"] = ".GetUploadedRequest"
  
  return setmetatable(instance, GetUploadedRequest_mt)
end

setmetatable(GetUploadedRequest, {__index = GSRequest})

function GetUploadedRequest:setTimeoutSeconds(timeoutSeconds)
  if timeoutSeconds == nil then
    timeoutSeconds = 10
  end
  
  self.timeoutSeconds = timeoutSeconds
end

function GetUploadedRequest:send(callback)
  GSRequest.send(self, function(message)
    if callback ~= nil then
      callback(GetUploadedResponse.new(message))
    end
  end)
end

	
function GetUploadedRequest:setScriptData(scriptData)
  self:setAttribute("scriptData", scriptData)
end
	
	
	
	
function GetUploadedRequest:setUploadId(uploadId)
	self:setAttribute("uploadId", uploadId)
end

return GetUploadedRequest
