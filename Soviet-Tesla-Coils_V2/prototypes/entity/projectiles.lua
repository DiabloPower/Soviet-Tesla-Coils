local explosion_animations = require("__base__/prototypes/entity/explosion-animations")

data:extend({

    --new projectile
    {
      type = "projectile",
      name = "tesla-electric",
      flags = {"not-on-map"},
      acceleration = 0.02,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "laser-bubble"
            },
            {
              type = "damage",
              damage = {amount = 10, type = "laser"}
            }
          }
        }
      },
      --light = {intensity = 0.5, size = 10},
      animation =
      {
        filename = "__base__/graphics/entity/blue-laser/blue-laser.png",
        draw_as_glow = true,
        frame_count = 1,
        width = 7,
        height = 14,
        priority = "high"
      }
    },
})
