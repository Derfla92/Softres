-- Playerhandling.
------------------
-- (create new player), When we first create a player, fill in the layout with blanks/defaults.
function SoftRes.player:new()
    local self = {
          groupPosition = nil, -- The position in group/raid
          softReserve = { -- Softreserved item.
                time = nil, -- When it was softreserved.
                itemId = nil, -- Ingame itemId.
                received = false, -- If it has been received or not. Always defaults to false.
          },
          receivedItems = { -- Log every received item.
                time = nil, -- Time, when you received the item.
                rollType = nil, -- MS, OS, FFA, SoftRes, RaidRoll.
                itemId = nil, -- ingame itemId.
                roll = nil, -- Winning roll.
          },
    }
    setmetatable(self, SoftRes.player)

    return self
end

-- PlayerGetters
function SoftRes.player:getSoftReserveTime() return self.softReserve.time end
function SoftRes.player:getSoftReserveItemId() return self.softReserve.itemId end
function SoftRes.player:getSoftReserveReceived() return self.softReserve.received end

-- PlayerSetters
function SoftRes.player:setSoftReserveItemId()

end
--------------------------------------------------------------------