#スラスター
execute if entity @s[scores={A.reigastuse=1..},nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:reigast}}]}] if score @s A.slasterCT matches 8.. run function reigast:reigast/reigastsword_skillactive
execute if predicate reigast:sneak if score @s[advancements={reigast:reigast/reigast_using_shiled=true}] A.slasterCT matches 8.. run function reigast:reigast/reigastsword_skillactive
advancement revoke @s only reigast:reigast/reigast_using_shiled

#クールタイム表記
execute if entity @s[nbt={OnGround:1b}] unless score @s A.slasterCTOG matches 2.. run scoreboard players add @s A.slasterCTOG 1
execute if score @s A.slasterCTOG matches 2.. unless score @s A.slasterCT matches 8.. run scoreboard players add @s A.slasterCT 1


#シールド、ソード切り替え
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shield",tag:{ItemName:reigast}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"レイガスト","color":"yellow","italic":false}',Lore:['{"text":"[Sword mode]","color":"white","italic":false}','{"text":"利き手に持った時:","color":"white","italic":false}','{"text":"攻撃力 7","color":"dark_green","italic":false}','{"text":"攻撃速度 1.6","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:1,ItemName:reigast,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-448318853,1823558609,-2017159991,1241075632],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.5,Operation:0,UUID:[I;-317423125,1730889252,-1431284281,-132063165],Slot:"mainhand"}]} 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{ItemName:reigast}}]}] run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"レイガスト","color":"yellow","italic":false}',Lore:['{"text":"[Shield mode]","color":"white","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:1,ItemName:reigast,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1002534504,51003660,-1589110175,387028412],Slot:"offhand"}]} 1

#チャージ
execute if predicate reigast:sneak run scoreboard players add @s[scores={A.slasterCT=8..}] A.charge 1
execute if score @s A.charge matches 0.. run function reigast:reigast/chargesound
execute unless predicate reigast:sneak run scoreboard players reset @s A.charge

#スキルリセット
scoreboard players reset @s[scores={A.reigastuse=1..}] A.reigastuse
