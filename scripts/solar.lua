Solar = {}
Solar.events = {}

Solar.animated_solarpanels = {
	['anti-solar'] = true,
	['solar-panel-mk02'] = true,
	['solar-panel-mk03'] = true
}

Solar.events.on_init = function()
	global.solarpanels = global.solarpanels or {}
	global.unsynced_solarpanels = global.unsynced_solarpanels or {}
end

function Solar.sync_solarpanel_animations(name)
	local new = {}
	for _, panel in pairs(global.solarpanels) do
		if panel.name == name then
			local old_panel = panel
			panel = panel.surface.create_entity{
				name = name,
				force = panel.force,
				position = panel.position,
				player = panel.last_user,
				create_build_effect_smoke = false
			}
			old_panel.destroy()
		end
		new[panel.unit_number] = panel
	end
	global.solarpanels = new
end

Solar.events[61] = function()
	for _, panel in pairs(global.solarpanels) do
		local daylight = Thermosolar.calc_daylight(panel.surface)
		if panel.name == 'anti-solar' then daylight = 1 - daylight end

		if daylight == 0 then
			panel.power_production = 0
			panel.electric_buffer_size = 0
			panel.active = false
		else
			panel.power_production = panel.prototype.max_energy_production * daylight * panel.surface.solar_power_multiplier
			panel.electric_buffer_size = panel.power_production * 60
			panel.active = true
		end
	end

	for name, _ in pairs(global.unsynced_solarpanels) do
		Solar.sync_solarpanel_animations(name)
	end
	global.unsynced_solarpanels = {}
end

Solar.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if Solar.animated_solarpanels[entity.name] then
		global.solarpanels[entity.unit_number] = entity
		global.unsynced_solarpanels[entity.name] = true
	end
end

Solar.events.on_destroyed = function(event)
	global.solarpanels[event.entity.unit_number] = nil
end