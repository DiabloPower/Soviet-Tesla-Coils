local path = "__Soviet-Tesla-Coils_V2__"

data:extend({
  
{
  type = "technology",
  name = "Soviet-Tesla-Coils",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-tesla.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "soviet-tesla-coil",
    }
  },
  prerequisites = {"laser", "military-science-pack"},
  unit =
  {
    count = 150,
    ingredients =
    {
      {"automation-science-pack", 1.5},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1.5},
      {"chemical-science-pack", 1}
    },
    time = 40
  },
  order = "a-j-b"
},

{
  type = "technology",
  name = "Tesla-coil-1",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.2
    }
  },
  prerequisites = {"Soviet-Tesla-Coils"},
  unit =
  {
    count = 100*1,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "e-j-a"
},
{
  type = "technology",
  name = "Tesla-coil-2",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.2
    }
  },
  prerequisites = {"Tesla-coil-1"},
  unit =
  {
    count = 100*2,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "e-l-b"
},
{
  type = "technology",
  name = "Tesla-coil-3",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.3
    }
  },
  prerequisites = {"Tesla-coil-2"},
  unit =
  {
    count = 100*3,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-c"
},
{
  type = "technology",
  name = "Tesla-coil-4",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.4
    }
  },
  prerequisites = {"Tesla-coil-3"},
  unit =
  {
    count = 100*4,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-d"
},
{
  type = "technology",
  name = "Tesla-coil-5",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.5
    },
    
  },
  prerequisites = {"Tesla-coil-4"},
  unit =
  {
    count = 100*5,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-e"
},
{
  type = "technology",
  name = "Tesla-coil-6",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.7
    }
  },
  prerequisites = {"Tesla-coil-5"},
  unit =
  {
    count = 100*6,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-f"
},
{
  type = "technology",
  name = "Tesla-coil-7",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslad.png",
  effects =
  {
    
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.9
    }
    
  },
  prerequisites = {"Tesla-coil-6", "space-science-pack"},
  unit =
  {
    count_formula = "2^(14-7)*8",
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"utility-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 60
  },
  max_level = "infinite",
  upgrade = true,
  order = "e-l-f"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-1",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "tesla-electric",
      modifier = 0.2
    }
  },
  prerequisites = {"Soviet-Tesla-Coils"},
  unit =
  {
    count = 100*1,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "e-j-a"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-2",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "tesla-electric",
      modifier = 0.2
    }
  },
  prerequisites = {"Tesla-coil-Shooting-Speed-1"},
  unit =
  {
    count = 100*2,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "e-l-b"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-3",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "tesla-electric",
      modifier = 0.3
    }
  },
  prerequisites = {"Tesla-coil-Shooting-Speed-2"},
  unit =
  {
    count = 100*3,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-c"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-4",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "tesla-electric",
      modifier = 0.4
    }
  },
  prerequisites = {"Tesla-coil-Shooting-Speed-3"},
  unit =
  {
    count = 100*4,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-d"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-5",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "tesla-electric",
      modifier = 0.4
    }
  },
  prerequisites = {"Tesla-coil-Shooting-Speed-4"},
  unit =
  {
    count = 100*5,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-e"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-6",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.7
    },
    {
      type = "ammo-damage",
      ammo_category = "beam",
      modifier = 0.6
    }
  },
  prerequisites = {"Tesla-coil-Shooting-Speed-5"},
  unit =
  {
    count = 100*6,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"utility-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "e-l-f"
},
{
  type = "technology",
  name = "Tesla-coil-Shooting-Speed-7",
  icon_size = 64, icon_mipmaps = 4,
  icon = path .. "/graphics/icons/soviet-teslas.png",
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "tesla-electric",
      modifier = 0.10
    },
    {
      type = "ammo-damage",
      ammo_category = "beam",
      modifier = 0.6
    }
  },
  prerequisites = {"Tesla-coil-Shooting-Speed-6", "space-science-pack"},
  unit =
  {
    count_formula = "2^(14-7)*8",
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"utility-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 60
  },
  max_level = "infinite",
  upgrade = true,
  order = "e-l-f"
}

})
