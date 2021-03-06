local GSHelperMethods = require("tests.GSHelperMethods")
local AutoResetEvent = require("tests.AutoResetEvent")

DurableReconnect = {}
DurableReconnect.mFinished = false

local writeText = nil
local mCurrInstance = nil

local function part6()
  assert(mCurrInstance.getNumPersistentItemsToSend() == 0)
  
  writeText("PASSED!\n")
  
  DurableReconnect.mFinished = true
end

local function part5()
  assert(mCurrInstance.getNumPersistentItemsToSend() == 1)
    
  mCurrInstance.setDurableQueuePaused(false)
  
  GSHelperMethods.waitForShutdown(mCurrInstance, function()
    part6()
  end)
end

local function part4()
  mCurrInstance.setNetworkAvailable(true)
  mCurrInstance.setDurableQueuePaused(true)
  
  mCurrInstance = GSHelperMethods.createInstanceWaitForAvailable("DurableReconnect", function()
    part5()
  end)
end

local function part3()
  mCurrInstance.clearDurableQueue()
  
  local request = GSHelperMethods.getLogRequest(mCurrInstance)
  
  mCurrInstance.setNetworkAvailable(false)

  request:setDurable(true)
  request:send(nil)
  
  GSHelperMethods.waitForShutdown(mCurrInstance, function()
    part4()
  end)
end

local function part2()
  GSHelperMethods.waitForDeviceAuthentication(mCurrInstance, function()
    part3()
  end)
end

function DurableReconnect:start(writeTextFunc)
  writeText = writeTextFunc
  
  writeText("DurableReconnect => ")
  
  print("##############################################")
  print("### DurableReconnect                       ###")
  print("##############################################")
  
  mCurrInstance = GSHelperMethods.createInstanceWaitForAvailable("DurableReconnect", function()
    part2()
  end)
end

return DurableReconnect