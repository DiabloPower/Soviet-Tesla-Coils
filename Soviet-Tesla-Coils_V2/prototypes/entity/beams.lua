local beam_blend_mode = "additive-soft"
local beam_non_light_flags = { "trilinear-filtering" }
local path = "__Soviet-Tesla-Coils_V2__"

function make_tesla_beam(beam_table, blend_mode, beam_flags, beam_tint, light_tint)
    beam_table.start =
    {
      filename = path .. "/graphics/entity/beam/tileable-beam-START.png",
      flags = beam_flags or beam_non_light_flags,
      line_length = 4,
      width = 52,
      height = 40,
      frame_count = 16,
      direction_count = 1,
      shift = {-0.03125, 0},
      tint = beam_tint,
      hr_version =
      {
        filename = path .. "/graphics/entity/beam/hr-tileable-beam-START.png",
        flags = beam_flags or beam_non_light_flags,
        line_length = 4,
        width = 94,
        height = 66,
        frame_count = 16,
        direction_count = 1,
        shift = {0.53125, 0},
        tint = beam_tint,
        scale = 0.5
      }
    }

    beam_table.ending =
    {
      filename = path .. "/graphics/entity/beam/tileable-beam-END.png",
      flags = beam_flags or beam_non_light_flags,
      line_length = 4,
      width = 49,
      height = 54,
      frame_count = 16,
      direction_count = 1,
      shift = {-0.046875, 0},
      tint = beam_tint,
      hr_version =
      {
        filename = path .. "/graphics/entity/beam/hr-tileable-beam-END.png",
        flags = beam_flags or beam_non_light_flags,
        line_length = 4,
        width = 91,
        height = 93,
        frame_count = 16,
        direction_count = 1,
        shift = {-0.078125, -0.046875},
        tint = beam_tint,
        scale = 0.5
      }
    }

    beam_table.head =
    {
      filename = path .. "/graphics/entity/beam/beam-head.png",
      flags = beam_flags or beam_non_light_flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      tint = beam_tint,
      blend_mode = blend_mode or beam_blend_mode,
      hr_version =
      {
        filename = path .. "/graphics/entity/beam/hr-beam-head.png",
        flags = beam_flags or beam_non_light_flags,
        line_length = 16,
        width = 64,
        height = 78,
        frame_count = 16,
        tint = beam_tint,
        blend_mode = blend_mode or beam_blend_mode,
        scale = 0.5
      }
    }

    beam_table.tail =
    {
      filename = path .. "/graphics/entity/beam/beam-tail.png",
      flags = beam_flags or beam_non_light_flags,
      line_length = 16,
      width = 32,
      height = 39,
      frame_count = 16,
      tint = beam_tint,
      blend_mode = blend_mode or beam_blend_mode,
      hr_version =
      {
        filename = path .. "/graphics/entity/beam/hr-beam-tail.png",
        flags = beam_flags or beam_non_light_flags,
        line_length = 16,
        width = 64,
        height = 78,
        frame_count = 16,
        tint = beam_tint,
        blend_mode = blend_mode or beam_blend_mode,
        scale = 0.5
      }
    }

    beam_table.body =
    {
      {
        filename = path .. "/graphics/entity/beam/beam-body.png",
        flags = beam_flags or beam_non_light_flags,
        width = 32,
        height = 39,
        line_length = 16,
        frame_count = 16,
        tint = beam_tint,
        scale = 2.0,
        blend_mode = blend_mode or beam_blend_mode,
        hr_version = {
          filename = path .. "/graphics/entity/beam/hr-beam-body.png",
          flags = beam_non_light_flags,
          width = 64,
          height = 78,
          line_length = 16,
          frame_count = 16,
          blend_mode = beam_blend_mode,
          scale = 2.0
        }
      }
    }

    beam_table.light_animations = util.copy
    {
      start = beam_table.start,
      ending = beam_table.ending,
      head = beam_table.head,
      body = beam_table.body,
      tail = beam_table.tail
    }
 
    return beam_table
end

function make_beam(sound)
  local result =
  {
    type = "beam",
    name = "soviet-tesla-beam",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 5,
    random_target_offset = true,
    target_offset = {0, -0.5},
    action_triggered_automatically = false,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 18, type = "electric"}
          }
        }
      }
    },
    graphics_set = 
    {
      beam = 
      {
        start = 
        {
          layers = 
          {
            {
              filename = path .. "/graphics/entity/beam/tileable-beam-START.png",
              flags = beam_non_light_flags,
              line_length = 4,
              width = 52,
              height = 40,
              frame_count = 16,
              direction_count = 1,
              shift = {-0.03125, 0},
              hr_version = {
                filename = path .. "/graphics/entity/beam/hr-tileable-beam-START.png",
                flags = beam_non_light_flags,
                line_length = 4,
                width = 94,
                height = 66,
                frame_count = 16,
                direction_count = 1,
                shift = {0.53125, 0},
                scale = 0.5
              }
            }
          }
        },
        ending = 
        {
          layers = 
          {
            {
              filename = path .. "/graphics/entity/beam/tileable-beam-END.png",
              flags = beam_non_light_flags,
              line_length = 4,
              width = 49,
              height = 54,
              frame_count = 16,
              direction_count = 1,
              shift = {-0.046875, 0},
              hr_version = {
                filename = path .. "/graphics/entity/beam/hr-tileable-beam-END.png",
                flags = beam_non_light_flags,
                line_length = 4,
                width = 91,
                height = 93,
                frame_count = 16,
                direction_count = 1,
                shift = {-0.078125, -0.046875},
                scale = 0.5
              }
            }
          }
        },               
        head = 
        {
          layers = 
          {
            {
              filename = path .. "/graphics/entity/beam/beam-head.png",
              flags = beam_non_light_flags,
              line_length = 16,
              width = 32,
              height = 39,
              frame_count = 16,
              blend_mode = beam_blend_mode,
              hr_version = {
                filename = path .. "/graphics/entity/beam/hr-beam-head.png",
                flags = beam_non_light_flags,
                line_length = 16,
                width = 64,
                height = 78,
                frame_count = 16,
                blend_mode = beam_blend_mode,
                scale = 0.5
              }
            }
          }
        },  
        tail = 
        {
          layers = 
          {
            {
              filename = path .. "/graphics/entity/beam/beam-tail.png",
              flags = beam_non_light_flags,
              line_length = 16,
              width = 32,
              height = 39,
              frame_count = 16,
              blend_mode = beam_blend_mode,
              hr_version = {
                filename = path .. "/graphics/entity/beam/hr-beam-tail.png",
                flags = beam_non_light_flags,
                line_length = 16,
                width = 64,
                height = 78,
                frame_count = 16,
                blend_mode = beam_blend_mode,
                scale = 0.5
              }
            }
          }
        },
        body = 
        {
          layers = 
          {
            {
              filename = path .. "/graphics/entity/beam/beam-body.png",
              flags = beam_non_light_flags,
              width = 32,
              height = 39,
              line_length = 16,
              frame_count = 16,
              blend_mode = beam_blend_mode,
              scale = 2.0,
              hr_version = {
                filename = path .. "/graphics/entity/beam/hr-beam-body.png",
                flags = beam_non_light_flags,
                width = 64,
                height = 78,
                line_length = 16,
                frame_count = 16,
                blend_mode = beam_blend_mode,
                scale = 2.0
              }
            }            
          }
        }
      }
    }
  }

  if sound then
    result.working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 1.5
      },
      max_sounds_per_type = 4
    }
    result.name = "soviet-tesla-beam"
  else
    result.name = "soviet-tesla-beam-no-sound"
  end

  return make_tesla_beam(result, beam_blend_mode, beam_non_light_flags, nil, nil)
end

data:extend(
{
  make_beam(true),
  make_beam(false)
})

--log("Pfad ist: " .. tostring(path))
--log("Beam geladen: " .. serpent.block(data.raw["beam"]["soviet-tesla-beam"]))
--log("Beam-Grafik-Datei: " .. tostring(path .. "/graphics/entity/beam/beam-body-1.png"))
--log("Finale Render-Parameter: " .. serpent.block(data.raw["beam"]["soviet-tesla-beam"].graphics_set))
