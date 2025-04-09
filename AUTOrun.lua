print("More UNC loaded")
getfenv(0).hookfunction(original, replacement)
    local fakeRef = function() return true end  -- Original always returns true
    original = function() return false end      -- Hooked version returns false
    return fakeRef                              -- Return a distinct reference
end
local hookfunction = getfenv(0).hookfunction
