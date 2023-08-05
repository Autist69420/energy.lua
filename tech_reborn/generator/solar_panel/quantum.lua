local util = require("util")

local quantum_solar_panel = {
    name = "techreborn:quantum_solar_panel"
}

---@return number
function quantum_solar_panel:get_total_stored()
    local peripherals = util.get_peripherals_from_type(self.name)
    local stored = util.get_total_stored_from_type(peripherals)

    return stored
end

---@return number
function quantum_solar_panel:get_total_capacity()
    local peripherals = util.get_peripherals_from_type(self.name)
    local capacity = util.get_total_capacity_from_type(peripherals)

    return capacity
end

return quantum_solar_panel