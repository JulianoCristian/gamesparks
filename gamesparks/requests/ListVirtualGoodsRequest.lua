local GSRequest = require("gamesparks.GSRequest")
local ListVirtualGoodsResponse = require("gamesparks.responses.ListVirtualGoodsResponse")

local ListVirtualGoodsRequest = {}
local ListVirtualGoodsRequest_mt = {__index = ListVirtualGoodsRequest}

function ListVirtualGoodsRequest.new(gs)
  local instance = GSRequest.new(gs)
 
  instance.data["@class"] = ".ListVirtualGoodsRequest"
  
  return setmetatable(instance, ListVirtualGoodsRequest_mt)
end

setmetatable(ListVirtualGoodsRequest, {__index = GSRequest})

function ListVirtualGoodsRequest:setTimeoutSeconds(timeoutSeconds)
  if timeoutSeconds == nil then
    timeoutSeconds = 10
  end
  
  self.timeoutSeconds = timeoutSeconds
end

function ListVirtualGoodsRequest:send(callback)
  GSRequest.send(self, function(message)
    if callback ~= nil then
      callback(ListVirtualGoodsResponse.new(message))
    end
  end)
end

	
function ListVirtualGoodsRequest:setScriptData(scriptData)
  self:setAttribute("scriptData", scriptData)
end
	
	
	
	
function ListVirtualGoodsRequest:setIncludeDisabled(includeDisabled)
	self:setAttribute("includeDisabled", includeDisabled)
end
	
	
	
function ListVirtualGoodsRequest:setTags(tags)
	self:setAttribute("tags", tags)
end

return ListVirtualGoodsRequest
