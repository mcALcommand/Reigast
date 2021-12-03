#パーティクル
execute if score @s A.charge matches 15 run particle minecraft:end_rod ~ ~ ~ 0.7 0.7 0.7 0.1 20
execute if score @s A.charge matches 29 run particle minecraft:end_rod ~ ~ ~ 0.7 0.7 0.7 0.1 20
execute if score @s A.charge matches 30.. run particle minecraft:end_rod ~ ~ ~ 0.7 0.7 0.7 0 1
#サウンド
execute if score @s A.charge matches 15 run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1.5 2
execute if score @s A.charge matches 30 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1