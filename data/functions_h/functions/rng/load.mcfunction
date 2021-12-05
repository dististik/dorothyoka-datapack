# Prepare all relevant RNG scores
# Global RNG value and next step multiplication constant
scoreboard objectives add rng dummy
scoreboard players set #r_value rng 0
scoreboard players set #r_multi rng 106293569
# Drowned extra hold item values
scoreboard players set #drowned_val rng 0
scoreboard players set #drowned_mod rng 200

# Run reseed to start RNG sequence
function functions_h:rng/reseed