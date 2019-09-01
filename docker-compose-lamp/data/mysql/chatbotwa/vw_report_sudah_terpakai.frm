TYPE=VIEW
query=select `a`.`no_pemesan` AS `no_pemesan`,`a`.`no_pemimpin` AS `no_pemimpin`,`a`.`is_approved` AS `is_notif`,`b`.`nama` AS `nama`,`b`.`kelompok` AS `kelompok`,`c`.`kode_grab` AS `kode_grab`,`c`.`used_at` AS `order_voucher_at`,`r`.`Name_Employee` AS `Name_Employee`,`r`.`Date_Time` AS `Date_Time`,`r`.`Pick_Up` AS `Pick_Up`,`r`.`Pickup_Date` AS `Pickup_Date`,`r`.`Drop_Off` AS `Drop_Off`,`r`.`Dropoff_Date` AS `Dropoff_Date`,`r`.`Trip_Code` AS `Trip_Code`,`r`.`Employee_ID` AS `Employee_ID`,`r`.`Trip_Description` AS `Trip_Description`,cast(replace(`r`.`Promo_Value`,\'.00\',\'\') as decimal(13,2)) AS `Promo_Value`,cast(replace(`r`.`Tolls_Others`,\'.00\',\'\') as decimal(13,2)) AS `Tolls_Others`,cast(replace(`r`.`Fare`,\'.00\',\'\') as decimal(13,2)) AS `fare`,((cast(replace(`r`.`Tolls_Others`,\'.00\',\'\') as decimal(13,2)) + cast(replace(`r`.`Fare`,\'.00\',\'\') as decimal(13,2))) - cast(replace(`r`.`Promo_Value`,\'.00\',\'\') as decimal(13,2))) AS `Total`,`r`.`update_at` AS `update_at` from (((`chatbotwa`.`form_order_grab` `a` left join `chatbotwa`.`form_users` `b` on((`a`.`no_pemesan` = `b`.`kontak`))) left join `chatbotwa`.`form_kode_grab` `c` on((`a`.`id_kode_grab` = `c`.`id`))) left join `chatbotwa`.`grab_report` `r` on((`c`.`kode_grab` = `r`.`Trip_Code`))) where (`r`.`Trip_Code` is not null)
md5=fe740ae10044b737c86f44de505d9010
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2019-09-01 00:26:45
create-version=1
source=select `a`.`no_pemesan` AS `no_pemesan`,`a`.`no_pemimpin` AS `no_pemimpin`,`a`.`is_approved` AS `is_notif`,`b`.`nama` AS `nama`,`b`.`kelompok` AS `kelompok`,`c`.`kode_grab` AS `kode_grab`,`c`.`used_at` AS `order_voucher_at`,`r`.`Name_Employee` AS `Name_Employee`,`r`.`Date_Time` AS `Date_Time`,`r`.`Pick_Up` AS `Pick_Up`,`r`.`Pickup_Date` AS `Pickup_Date`,`r`.`Drop_Off` AS `Drop_Off`,`r`.`Dropoff_Date` AS `Dropoff_Date`,`r`.`Trip_Code` AS `Trip_Code`,`r`.`Employee_ID` AS `Employee_ID`,`r`.`Trip_Description` AS `Trip_Description`,cast(replace(`r`.`Promo_Value`,\'.00\',\'\') as decimal(13,2)) AS `Promo_Value`,cast(replace(`r`.`Tolls_Others`,\'.00\',\'\') as decimal(13,2)) AS `Tolls_Others`,cast(replace(`r`.`Fare`,\'.00\',\'\') as decimal(13,2)) AS `fare`,((cast(replace(`r`.`Tolls_Others`,\'.00\',\'\') as decimal(13,2)) + cast(replace(`r`.`Fare`,\'.00\',\'\') as decimal(13,2))) - cast(replace(`r`.`Promo_Value`,\'.00\',\'\') as decimal(13,2))) AS `Total`,`r`.`update_at` AS `update_at` from (((`form_order_grab` `a` left join `form_users` `b` on((`a`.`no_pemesan` = `b`.`kontak`))) left join `form_kode_grab` `c` on((`a`.`id_kode_grab` = `c`.`id`))) left join `grab_report` `r` on((`c`.`kode_grab` = `r`.`Trip_Code`))) where (`r`.`Trip_Code` is not null)
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`no_pemesan` AS `no_pemesan`,`a`.`no_pemimpin` AS `no_pemimpin`,`a`.`is_approved` AS `is_notif`,`b`.`nama` AS `nama`,`b`.`kelompok` AS `kelompok`,`c`.`kode_grab` AS `kode_grab`,`c`.`used_at` AS `order_voucher_at`,`r`.`Name_Employee` AS `Name_Employee`,`r`.`Date_Time` AS `Date_Time`,`r`.`Pick_Up` AS `Pick_Up`,`r`.`Pickup_Date` AS `Pickup_Date`,`r`.`Drop_Off` AS `Drop_Off`,`r`.`Dropoff_Date` AS `Dropoff_Date`,`r`.`Trip_Code` AS `Trip_Code`,`r`.`Employee_ID` AS `Employee_ID`,`r`.`Trip_Description` AS `Trip_Description`,cast(replace(`r`.`Promo_Value`,\'.00\',\'\') as decimal(13,2)) AS `Promo_Value`,cast(replace(`r`.`Tolls_Others`,\'.00\',\'\') as decimal(13,2)) AS `Tolls_Others`,cast(replace(`r`.`Fare`,\'.00\',\'\') as decimal(13,2)) AS `fare`,((cast(replace(`r`.`Tolls_Others`,\'.00\',\'\') as decimal(13,2)) + cast(replace(`r`.`Fare`,\'.00\',\'\') as decimal(13,2))) - cast(replace(`r`.`Promo_Value`,\'.00\',\'\') as decimal(13,2))) AS `Total`,`r`.`update_at` AS `update_at` from (((`chatbotwa`.`form_order_grab` `a` left join `chatbotwa`.`form_users` `b` on((`a`.`no_pemesan` = `b`.`kontak`))) left join `chatbotwa`.`form_kode_grab` `c` on((`a`.`id_kode_grab` = `c`.`id`))) left join `chatbotwa`.`grab_report` `r` on((`c`.`kode_grab` = `r`.`Trip_Code`))) where (`r`.`Trip_Code` is not null)
