print("More UNC loaded")
local function hookfunction(original, replacement)
    local fakeRef = function() return true end  -- Original always returns true
    original = function() return false end      -- Hooked version returns false
    return fakeRef                              -- Return a distinct reference
end
