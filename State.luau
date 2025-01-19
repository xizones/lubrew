local state = {}
local Children:{Instance} = {} -- list of all parts created within a state
-- parent: init.luau

state.state_index = {
    Children = Children
}



function state.state_index:Free() -- destroy all instances win a state
    for i, v in pairs(self.Children) do
        v:Destroy()
    end
end

return state;