# Summon area effect cloud and grab the first value of it's UUID
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rng_seed"]}
execute store result score #r_value rng run data get entity @e[tag=rng_seed,limit=1] UUID[0]
# Kill the area effect cloud
kill @e[tag=rng_seed]