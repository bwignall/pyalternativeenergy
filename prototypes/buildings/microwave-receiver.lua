RECIPE {
    type = "recipe",
    name = "microwave-receiver",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {'nxsb-alloy', 40},
        {'processing-unit', 15},
        {'ns-material', 50},
        {'small-parts-03', 150},
        {'graphene-roll', 25},
        {'plastic-bar', 100},
        {'super-steel', 100},
        {'electric-engine-unit', 10},
        {'aerogel', 20},
    },
    results = {
        {"microwave-receiver", 1}
    }
}:add_unlock("microwave-receiver")

ITEM {
    type = "item",
    name = "microwave-receiver",
    icon = "__pyalternativeenergygraphics__/graphics/icons/microwave-receiver.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-special-buildings",
    order = "f",
    place_result = "microwave-receiver",
    stack_size = 10
}

ENTITY {
    type = "electric-energy-interface",
    name = "microwave-receiver",
    icon = "__pyalternativeenergygraphics__/graphics/icons/microwave-receiver.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "microwave-receiver"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.3, -4.3}, {4.3, 4.3}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    energy_source = {
        type = 'electric',
        usage_priority = 'primary-output',
        buffer_capacity = '5MJ',
        --output_flow_limit = "500MW",
        render_no_power_icon = false
    },
    energy_production = '0MW',
    energy_usage = '0kW',
    animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b1.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, 96),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b2.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, 0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b3.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, -96),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b4.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, -192),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b5.png",
                width = 352,
                height = 64,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, -272),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-base.png",
                width = 288,
                height = 224,
                repeat_count = 200,
                --frame_count = 100,
                --line_length = 5,
                animation_speed = 0.15,
                --run_mode = "forward-then-backward",
                draw_as_shadow = true,
                shift = util.by_pixel(0, 0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-bottom.png",
                width = 352,
                height = 32,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(32, 128),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-side.png",
                width = 64,
                height = 256,
                frame_count = 100,
                line_length = 25,
                animation_speed = 0.15,
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(176, 0),
            },
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
  }

  data:extend({
    {
        type = 'animation',
        name = "microwave-receiver",
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b1.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, 96),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b2.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, 0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b3.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, -96),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b4.png",
                width = 352,
                height = 96,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, -192),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/b5.png",
                width = 352,
                height = 64,
                --repeat_count = 100,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(-32, -272),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-base.png",
                width = 288,
                height = 224,
                repeat_count = 200,
                --frame_count = 100,
                --line_length = 5,
                animation_speed = 0.15,
                --run_mode = "forward-then-backward",
                draw_as_shadow = true,
                shift = util.by_pixel(0, 0),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-bottom.png",
                width = 352,
                height = 32,
                frame_count = 100,
                line_length = 5,
                animation_speed = 0.15,
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(32, 128),
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/microwave-receiver/sh-side.png",
                width = 64,
                height = 256,
                frame_count = 100,
                line_length = 25,
                animation_speed = 0.15,
                draw_as_shadow = true,
                run_mode = "forward-then-backward",
                shift = util.by_pixel(176, 0),
            },
        }
    }
})
