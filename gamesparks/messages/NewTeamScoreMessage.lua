
--THIS FILE IS AUTO GENERATED, DO NOT MODIFY!!


local GSResponse = require("gamesparks.GSResponse")
local GSUtils = require("gamesparks.GSUtils")

local LeaderboardData = require("gamesparks.types.LeaderboardData")
local LeaderboardRankDetails = require("gamesparks.types.LeaderboardRankDetails")


local NewTeamScoreMessage = {}
local NewTeamScoreMessage_mt = {__index = NewTeamScoreMessage}

function NewTeamScoreMessage.new(data)
  local instance = GSResponse.new(data)
  return setmetatable(instance, NewTeamScoreMessage_mt)
end

setmetatable(NewTeamScoreMessage, {__index = GSResponse})

	
		
-- The new leaderboard data associated with this message.
-- method type 2 - typed object return type
function NewTeamScoreMessage:getLeaderboardData()
	if self:getAttribute("leaderboardData") ~= nil then
		return LeaderboardData.new(self:getAttribute("leaderboardData"))
	end
	  
	return nil
end		
				
		
-- The leaderboard's name.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getLeaderboardName()
	if self:getAttribute("leaderboardName") ~= nil then
		return self:getAttribute("leaderboardName")
  	end
	
  	return nil
  	
end
		
-- The leaderboard shortcode.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getLeaderboardShortCode()
	if self:getAttribute("leaderboardShortCode") ~= nil then
		return self:getAttribute("leaderboardShortCode")
  	end
	
  	return nil
  	
end
		
-- A unique identifier for this message.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getMessageId()
	if self:getAttribute("messageId") ~= nil then
		return self:getAttribute("messageId")
  	end
	
  	return nil
  	
end
		
-- Flag indicating whether this message could be sent as a push notification or not.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getNotification()
	if self:getAttribute("notification") ~= nil then
		return self:getAttribute("notification")
  	end
	
  	return false
  	
end
		
-- The ranking information for the new score.
-- method type 2 - typed object return type
function NewTeamScoreMessage:getRankDetails()
	if self:getAttribute("rankDetails") ~= nil then
		return LeaderboardRankDetails.new(self:getAttribute("rankDetails"))
	end
	  
	return nil
end		
				
		
-- ScriptData is arbitrary data that can be stored in a message by a Cloud Code script.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getScriptData()
	if self:getAttribute("scriptData") ~= nil then
		return self:getAttribute("scriptData")
  	end
	
  	return nil
  	
end
		
-- A textual title for the message.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getSubTitle()
	if self:getAttribute("subTitle") ~= nil then
		return self:getAttribute("subTitle")
  	end
	
  	return nil
  	
end
		
-- A textual summary describing the message's purpose.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getSummary()
	if self:getAttribute("summary") ~= nil then
		return self:getAttribute("summary")
  	end
	
  	return nil
  	
end
		
-- A textual title for the message.
-- method type 5 - primitive return type
function NewTeamScoreMessage:getTitle()
	if self:getAttribute("title") ~= nil then
		return self:getAttribute("title")
  	end
	
  	return nil
  	
end

return NewTeamScoreMessage

