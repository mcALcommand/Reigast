
scoreboard players remove @s A.slimerecursive 1
summon slime ^ ^ ^-0.35 {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",NoAI:1b,Tags:["knokslime"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
execute if score @s A.slimerecursive matches 0.. run function reigast:reigast/slimesummon