# Revoke utility advancement so it can be repeated
advancement revoke @s only functions_h:trigger_utility/allay_raid
# Take one step in the RNG sequence and update relevant values
function functions_h:rng/next_value
scoreboard players operation #allay_val rng = #r_value rng
scoreboard players operation #allay_val rng %= #allay_mod rng
# Spawn allay above player if 15% chance is passed
execute if score #allay_val rng matches 37.. run summon minecraft:allay ~ ~5 ~