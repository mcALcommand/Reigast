#アイテムGive
   give @p carrot_on_a_stick{display:{Name:'{"text":"レイガスト","color":"yellow","italic":false}',Lore:['{"text":"[Sword mode]","color":"white","italic":false}','{"text":"利き手に持った時:","color":"white","italic":false}','{"text":"攻撃力 7","color":"dark_green","italic":false}','{"text":"攻撃速度 1.6","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:1,ItemName:reigast,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1463643672,-1594474447,-1936145520,-1863375050],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.5,Operation:0,UUID:[I;2023817673,2005223178,-1925892226,1914315220],Slot:"mainhand"}]} 1

# 次回以降も実行するためにレシピ没収
  recipe take @s reigast:reigast_recipe

# ちぇすと　いず　だい
 clear @s chest 1

# 進捗消去
  advancement revoke @s only reigast:craft/reigast