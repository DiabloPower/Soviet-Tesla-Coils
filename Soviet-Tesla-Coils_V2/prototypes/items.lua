local path = "__Soviet-Tesla-Coils_V2__"

data:extend({
  {
    type = "item",
    name = "soviet-tesla-coil",
    icon = path .. "/graphics/icons/soviet-tesla.png",
    icon_size = 64, icon_mipmaps = 4,
    place_result = "soviet-tesla-coil",
    subgroup = "defensive-structure",
    order = "b[turret]-s[soviet-tesla-coil]",
    stack_size = 50
  }
})
