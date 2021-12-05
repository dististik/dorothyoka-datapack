# If a new drowned loads in, account for it then take a step in the RNG sequence
execute as @e[type=minecraft:drowned,tag=!rng_counted,limit=1] run data merge entity @s {Tags:["rng_counting"]}
execute as @e[type=minecraft:drowned,tag=rng_counting,limit=1] run function functions_h:rng/next_value
# Modulo current RNG value by 200 and continue if a 1% chance pass is achieved
scoreboard players operation #drowned_val rng = #r_value rng
scoreboard players operation #drowned_val rng %= #drowned_mod rng
execute if score #drowned_val rng matches 1 as @e[type=minecraft:drowned,tag=rng_counting,limit=1] run function functions_h:rng/drowned/equip
# Set tags to counted to prevent recounting
execute as @e[type=minecraft:drowned,tag=rng_counting,limit=1] run data merge entity @s {Tags:["rng_counted"]}