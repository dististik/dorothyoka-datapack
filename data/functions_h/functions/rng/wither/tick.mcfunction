# If a new wither skeleton loads in, account for it then take a step in the RNG sequence
execute as @e[type=minecraft:wither_skeleton,tag=!rng_counted,limit=1] run data merge entity @s {Tags:["rng_counting"]}
execute as @e[type=minecraft:wither_skeleton,tag=rng_counting,limit=1] run function functions_h:rng/next_value
# Modulo current RNG value by 160
execute as @e[type=minecraft:wither_skeleton,tag=rng_counting,limit=1] run scoreboard players operation #wither_val rng = #r_value rng
execute as @e[type=minecraft:wither_skeleton,tag=rng_counting,limit=1] run scoreboard players operation #wither_val rng %= #wither_mod rng
# Apply enchantment if 37.5% pass achieved
execute if score #wither_val rng matches 128..158 as @e[type=minecraft:wither_skeleton,tag=rng_counting,limit=1] run function functions_h:rng/wither/enchant
# Set tags to counted to prevent recounting
execute as @e[type=minecraft:wither_skeleton,tag=rng_counting,limit=1] run data merge entity @s {Tags:["rng_counted"]}