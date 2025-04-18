local path = "__Soviet-Tesla-Coils_V2__"

data:extend({
    {
     type = "recipe",
     name = "soviet-tesla-coil",
     enabled = false,
     energy_required = 8,
     ingredients =
     {
       {type = "item", name = "steel-plate", amount = 20},
       {type = "item", name = "copper-plate", amount = 15},
       {type = "item", name = "electronic-circuit", amount = 15},
       {type = "item", name = "advanced-circuit", amount = 10},
       {type = "item", name = "accumulator", amount = 2}
     },
     results = {{type="item", name="soviet-tesla-coil", amount=1}}
    }
 })