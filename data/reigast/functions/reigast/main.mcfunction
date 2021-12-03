#predicate使ったらバグったので全部NBT
#持ち判定
execute as @a[nbt={SelectedItem:{tag:{ItemName:reigast}}}] at @s run function reigast:reigast/reigastsword
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:reigast}}]},nbt=!{SelectedItem:{tag:{ItemName:reigast}}}] at @s run function reigast:reigast/reigastsword

#スライム処理
execute as @e[type=slime,tag=knokslime] at @s run function reigast:reigast/slimeremove
#スコアリセット
execute as @a[nbt=!{SelectedItem:{tag:{ItemName:reigast}}},nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:reigast}}]}] run function reigast:reigast/scorereset
