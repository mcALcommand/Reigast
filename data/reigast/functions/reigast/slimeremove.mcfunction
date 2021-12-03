#スライム処理
scoreboard players add @s A.removeslime 1 
execute if entity @s[scores={A.removeslime=2..}] at @s run tp @s ~ ~-10000 ~
kill @s[scores={A.removeslime=2..}]