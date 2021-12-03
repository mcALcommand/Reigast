#パーティクル　サウンド
particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 1.3
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.3

#浮遊エフェクト
tp @s @s
execute if entity @s[x_rotation=-21..-1.6] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:10b,Duration:6,ShowParticles:0b}]}
execute if entity @s[x_rotation=-70..-21] unless score @s A.charge matches 30.. run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:6,ShowParticles:0b}]}
execute if entity @s[x_rotation=-70..-21] if score @s A.charge matches 30.. run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:30b,Duration:6,ShowParticles:0b}]}
execute if entity @s[x_rotation=-90..-70] unless score @s A.charge matches 30.. run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:25b,Duration:6,ShowParticles:0b}]}
execute if entity @s[x_rotation=-90..-70] if score @s A.charge matches 30.. run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:40b,Duration:6,ShowParticles:0b}]}
execute if entity @s[x_rotation=-1.6..30] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:28b,Amplifier:1b,Duration:10,ShowParticles:0b}]}
#攻撃エフェクト
execute unless score @s A.charge matches 30.. run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:5b,Amplifier:1b,Duration:22,ShowParticles:0b}]}
execute if score @s A.charge matches 30.. run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:5b,Amplifier:4b,Duration:25,ShowParticles:0b}]}
#耐性エフェクト
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:11b,Amplifier:4b,Duration:6,ShowParticles:0b}]}
#スライム
execute if entity @s[x_rotation=-90..-70] unless score @s A.charge matches 30.. run scoreboard players set @s A.slimerecursive 10
execute unless entity @s[x_rotation=-90..-70] unless score @s A.charge matches 30.. run scoreboard players set @s A.slimerecursive 30
execute if entity @s[x_rotation=-90..-70] if score @s A.charge matches 30.. run scoreboard players set @s A.slimerecursive 15
execute unless entity @s[x_rotation=-90..-70] if score @s A.charge matches 30.. run scoreboard players set @s A.slimerecursive 60
execute rotated ~ 0 run function reigast:reigast/slimesummon
#スコアリセット
scoreboard players reset @s A.slasterCT
scoreboard players reset @s A.slasterCTOG
scoreboard players reset @s A.charge



