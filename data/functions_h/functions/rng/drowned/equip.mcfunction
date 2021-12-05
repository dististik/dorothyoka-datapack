# If the drowned ISN'T holding an item, give it the prismarine shaft
execute unless data entity @s HandItems[{Count:1b}] run data merge entity @s {HandItems:[{},{id:"minecraft:raw_copper",Count:1b}],HandDropChances:[0.085F,0.300F]}
# If the drowned IS holding an item, check what type of item it is and then give it the proper nbt
execute if data entity @s HandItems[{id:"minecraft:trident"}] run data merge entity @s {HandItems:[{id:"minecraft:trident",Count:1b},{id:"minecraft:raw_copper",Count:1b}],HandDropChances:[0.085F,0.300F]}
execute if data entity @s HandItems[{id:"minecraft:fishing_rod"}] run data merge entity @s {HandItems:[{id:"minecraft:fishing_rod",Count:1b},{id:"minecraft:raw_copper",Count:1b}],HandDropChances:[0.085F,0.300F]}
execute if data entity @s HandItems[{id:"minecraft:nautilus_shell"}] run data merge entity @s {HandItems:[{id:"minecraft:nautilus_shell",Count:1b},{id:"minecraft:raw_copper",Count:1b}],HandDropChances:[0.085F,0.300F]}