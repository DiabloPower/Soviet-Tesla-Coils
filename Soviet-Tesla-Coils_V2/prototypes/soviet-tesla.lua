local path = "__Soviet-Tesla-Coils_V2__"
local hit_effects = require ("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds.lua")

  function soviet_tesla_extension(inputs)
    return
    {
      filename = path .. "/graphics/entity/soviet-tesla/lr-tesla-charge.png",
      priority = "high",
      width = 111,
      height= 181,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = inputs.frame_count or 22,
      line_length = inputs.line_length or 11,
      animation_speed = 1 / 25,
      run_mode = inputs.run_mode or "forward",      
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = path .. "/graphics/entity/soviet-tesla/hr-tesla-charge.png",
        priority = "high",
        width = 222,
        height= 362,      
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = inputs.frame_count or 22,
        line_length = inputs.line_length or 11,
        animation_speed = 1 / 25,
        run_mode = inputs.run_mode or "forward",        
        shift = util.by_pixel(0, 0),
        scale = 0.5
      }
    }
  end

  function soviet_tesla_extension_mask(inputs)
    return
    {
      filename = path .. "/graphics/entity/soviet-tesla/lr-soviet-tesla-mask.png",
      priority = "high",
      flags = { "mask" },
      width = 111,
      height = 181,
      frame_count = inputs.frame_count or 1,
      line_length = inputs.line_length or 1,
      repeat_count = inputs.repeat_count or 22,
      run_mode = inputs.run_mode or "forward",
      axially_symmetrical = false,
      apply_runtime_tint = true,
      direction_count = 1,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = path .. "/graphics/entity/soviet-tesla/hr-soviet-tesla-mask.png",
        priority = "high",
        flags = { "mask" },
        width = 222,
        height = 362,
        frame_count = inputs.frame_count or 1,
        line_length = inputs.line_length or 1,
        repeat_count = inputs.repeat_count or 22,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        apply_runtime_tint = true,
        direction_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
      }
    }
  end

  function soviet_tesla_static(inputs)
    return
    {
      filename = path .. "/graphics/entity/soviet-tesla/lr-soviet-tesla.png",
      priority = "high",
      width = 111,
      height= 181,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = 1,
      line_length = 1,
      repeat_count = 32,
      animation_speed = 1 / 4,
      continuous_animation = true,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = path .. "/graphics/entity/soviet-tesla/hr-soviet-tesla.png",
        priority = "high",
        width = 222,
        height= 362,      
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        line_length = 1,
        repeat_count = 32,
        animation_speed = 1 / 4,
        continuous_animation = true,                
        shift = util.by_pixel(0, 0),
        scale = 0.5
      }
    }
  end
  
  function soviet_tesla_extension_shadow(inputs)
    return
    {
      filename = path .. "/graphics/entity/soviet-tesla/lr-tesla-shadow.png",
      width = 222,
      height= 150,
      frame_count = inputs.frame_count,
      line_length = inputs.line_length,
      repeat_count = inputs.repeat_count,       
      axially_symmetrical = false,
      direction_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(78, 40),
      hr_version =
      {
        filename = path .. "/graphics/entity/soviet-tesla/hr-tesla-shadow.png",
        width = 444,
        height= 300,
        frame_count = inputs.frame_count,
        line_length = inputs.line_length,
        repeat_count = inputs.repeat_count,        
        axially_symmetrical = false,
        direction_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(78, 40),
        scale = 0.5
      }
    }
  end
  
  function soviet_tesla_shooting()
    return
    {
      filename = path .. "/graphics/entity/soviet-tesla/lr-soviet-teslashoot.png",
      priority = "high",
      width = 111,
      height= 181,
      frame_count = 22,
      line_length = 11,
      direction_count = 1,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = path .. "/graphics/entity/soviet-tesla/hr-soviet-teslashoot.png",
        priority = "high",
        width = 222,
        height= 362,
        frame_count = 22,
        line_length = 11,
        direction_count = 1,
        shift = util.by_pixel(0, 0),      
        scale = 0.5
      }
    }
  end
  
  function soviet_tesla_shooting_glow()
    return
    {
      filename = path .. "/graphics/entity/soviet-tesla/lr-soviet-teslastatic.png",
      priority = "high",
      width = 111,
      height= 181,
      frame_count = 32,
      line_length = 8,
      direction_count = 1,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = path .. "/graphics/entity/soviet-tesla/hr-soviet-teslastatic.png",
        priority = "high",
        width = 222,
        height= 362,
        frame_count = 32,
        line_length = 8,
        direction_count = 1,
        shift = util.by_pixel(0, 0),      
        scale = 0.5
      }
    }
  end

  --soviet-tesla
  data:extend({
  {
    type = "electric-turret",
    name = "soviet-tesla-coil",
    icon = path .. "/graphics/icons/soviet-tesla.png",
    icon_size = 64, icon_mipmaps = 4,
    minable = {mining_time = 0.6, result = "soviet-tesla-coil"},
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 1250,
    preparing_sound = sounds.laser_turret_activate,
    folding_sound = sounds.laser_turret_deactivate,
    corpse = "medium-remnants",
    dying_explosion = "artillery-turret-explosion",
    attacking_speed = 1.5,
    folding_speed = 1 / 100,
    prepared_speed = 1 / 100,
    preparing_speed = 1 / 100,
    collision_box = {{-1.4, 0.0}, {1.4, 2.5}},
    selection_box = {{-1.5, 0.0}, {1.4, 2.8}},
    allow_copy_paste = true,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1201kJ",
      input_flow_limit = "12600kW",
      drain = "35kW",
      usage_priority = "primary-input"
    },  
    
    light = {intensity = 3.0, size = 10, color = {r = 0.0, g = 1.0, b = 1.0}, shift = {0,0}},
    continuous_animation = true,

    folded_animation =
    {
      layers =
      {
        soviet_tesla_static(),
        soviet_tesla_extension_shadow{frame_count=1, line_length = 1, repeat_count = 32},
        soviet_tesla_extension_mask{frame_count=1, line_length = 1, repeat_count =32},              
      }      
    },
    preparing_animation =
    {
      layers =
      {
        soviet_tesla_extension{frame_count=22, line_length = 11, run_mode = "forward"},
        soviet_tesla_extension_shadow{frame_count=1, line_length = 1, repeat_count = 22},
        soviet_tesla_extension_mask{frame_count=1, line_length = 1, repeat_count =22},        
      }
    },
    prepared_animation =
    {
      layers =
      {
        soviet_tesla_extension_mask{frame_count=1, line_length = 1, repeat_count =22},
        soviet_tesla_shooting{frame_count= 22, line_length = 11},
        soviet_tesla_extension_shadow{frame_count=1, line_length = 1, repeat_count = 22},
      }
    },

    energy_glow_animation = soviet_tesla_shooting_glow{frame_count=32, line_length = 8},
    glow_light_intensity = 2.5, -- defaults to 0

    folding_animation =
    {
      layers =
      {
        soviet_tesla_extension{frame_count=22, line_length = 11, run_mode = "backward"},
        soviet_tesla_extension_shadow{frame_count=1, line_length = 1, repeat_count = 22},
        soviet_tesla_extension_mask{frame_count=1, line_length = 1, repeat_count =22},                
      }
    },

    attack_parameters =  

    {
      type = "beam",
      ammo_category = "tesla-electric",    
      cooldown = 340,
      range = 38,
      source_direction_count = 64,
      source_offset = {0, 0 / 4},
      damage_modifier = 2.2,
      ammo_type =
      {
        energy_consumption = "800kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "soviet-tesla-beam",
            max_length = 48,
            duration = 40,
            source_offset = {-0.0, -2.2}
          }
        }
      }
    },   

    graphics_set = 
    {
      base_visualisation =
      {
        animation =
        {
          layers =
          {
            {
              filename = path .. "/graphics/entity/soviet-tesla/lr-soviet-teslabase.png",
              priority = "high",
              width = 111,
              height= 181,
              frame_count = 32,
              animation_speed = 1 / 4,
              line_length = 8,
              repeat_count = 1,
              direction_count = 1,
              shift = util.by_pixel(0, 0),          
              hr_version =
              {
              filename = path .. "/graphics/entity/soviet-tesla/hr-soviet-teslabase.png",
              priority = "high",
              width = 222,
              height= 362,
              frame_count = 32,
              animation_speed = 1 / 4,
              line_length = 8,
              repeat_count = 1,
              direction_count = 1,
              shift = util.by_pixel(0, 0),          
              scale = 0.5
              }
            },
            {
              filename = path .. "/graphics/entity/soviet-tesla/lr-soviet-tesla-mask.png",
              flags = { "mask" },
              priority = "high",
              width = 111,
              height= 181,
              frame_count = 1,
              animation_speed = 1 / 4,
              line_length = 1,
              repeat_count = 32,
              direction_count = 1,
              shift = util.by_pixel(0, 0),          
              hr_version =
              {
              filename = path .. "/graphics/entity/soviet-tesla/hr-soviet-tesla-mask.png",
              flags = { "mask" },
              priority = "high",
              width = 222,
              height= 362,
              frame_count = 1,
              animation_speed = 1 / 4,
              line_length = 1,
              repeat_count = 32,
              direction_count = 1,
              shift = util.by_pixel(0, 0),          
              scale = 0.5
              }
            },
            {
              filename = path .. "/graphics/entity/soviet-tesla/lr-tesla-shadow.png",
              width = 222,
              height= 150,
              frame_count = 1,
              animation_speed = 1 / 4,
              line_length = 1,
              repeat_count = 32,
              axially_symmetrical = false,
              direction_count = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(78, 40),
              hr_version =
              {
                filename = path .. "/graphics/entity/soviet-tesla/hr-tesla-shadow.png",
                width = 444,
                height= 300,
                frame_count = 1,
                animation_speed = 1 / 4,
                line_length = 1,
                repeat_count = 32,     
                axially_symmetrical = false,
                direction_count = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(78, 40),
                scale = 0.5
              }
            },
          }
        }
      }
    },
    call_for_help_radius = 48,
    vehicle_impact_sound = sounds.generic_impact
  }, 
  
  })