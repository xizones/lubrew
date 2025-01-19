local lubrew = {
    __VERSION = "0"
}
local state = require(script.State)

export type lubrew_state = {
    Free: () -> nil;
}

function lubrew:newState():lubrew_state
    local lewbrew_state = table.clone(self)
    
    return setmetatable(lewbrew_state, {
        __index = state.state_index
    })

end