 SELECT "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class", "STANDARD"."STD_Std_Id","LOC_DET"."LOD_Loc_Qty_On_Hand", "COMPANY"."CMP_Comp_Code", "CUSTOMER"."CUS_Cus_No", "COMPANY"."CMP_Name", "CUSTOMER"."CUS_Name", "STANDARD"."STD_Inv_Type"
 FROM   (("off005"."dbo"."STANDARD" "STANDARD" INNER JOIN "off005"."dbo"."LOC_DET" "LOC_DET" ON "STANDARD"."STD_Std_Id"="LOC_DET"."LOD_Std_Id") INNER JOIN "off005"."dbo"."CUSTOMER" "CUSTOMER" ON ("STANDARD"."STD_Cus_No"="CUSTOMER"."CUS_Cus_No") AND ("LOC_DET"."LOD_Cus_No"="CUSTOMER"."CUS_Cus_No")) INNER JOIN "off005"."dbo"."COMPANY" "COMPANY" ON ("STANDARD"."STD_Comp_Code"="COMPANY"."CMP_Comp_Code") AND ("LOC_DET"."LOD_Comp_Code"="COMPANY"."CMP_Comp_Code")
 ORDER BY "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class"
 
 
 
 /* all join */
  SELECT "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class", "LOC_DET"."LOD_Loc_Qty_On_Hand", "COMPANY"."CMP_Name", "CUSTOMER"."CUS_Name"
 FROM   (("off005"."dbo"."LOC_DET" "LOC_DET" INNER JOIN "off005"."dbo"."COMPANY" "COMPANY" ON "LOC_DET"."LOD_Comp_Code"="COMPANY"."CMP_Comp_Code") INNER JOIN "off005"."dbo"."CUSTOMER" "CUSTOMER" ON (("LOC_DET"."LOD_Cus_No"="CUSTOMER"."CUS_Cus_No") AND ("LOC_DET"."LOD_Comp_Code"="CUSTOMER"."CUS_Comp_Code")) AND ("COMPANY"."CMP_Comp_Code"="CUSTOMER"."CUS_Comp_Code")) INNER JOIN "off005"."dbo"."STANDARD" "STANDARD" ON ((((("LOC_DET"."LOD_Std_Id"="STANDARD"."STD_Std_Id") AND ("LOC_DET"."LOD_Comp_Code"="STANDARD"."STD_Comp_Code")) AND ("LOC_DET"."LOD_Cus_No"="STANDARD"."STD_Cus_No")) AND ("COMPANY"."CMP_Comp_Code"="STANDARD"."STD_Comp_Code")) AND ("CUSTOMER"."CUS_Comp_Code"="STANDARD"."STD_Comp_Code")) AND ("CUSTOMER"."CUS_Cus_No"="STANDARD"."STD_Cus_No")
 where "LOC_DET"."LOD_Comp_Code" = 'A' and "CUSTOMER"."CUS_Cus_No" = 'ADV005'
 ORDER BY "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class"

 /* minimum join */
 SELECT "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class", "LOC_DET"."LOD_Loc_Qty_On_Hand", "COMPANY"."CMP_Name", "CUSTOMER"."CUS_Name", "LOC_DET"."LOD_Comp_Code", "LOC_DET"."LOD_Cus_No"
 FROM   (("off005"."dbo"."LOC_DET" "LOC_DET" INNER JOIN "off005"."dbo"."COMPANY" "COMPANY" ON "LOC_DET"."LOD_Comp_Code"="COMPANY"."CMP_Comp_Code") INNER JOIN "off005"."dbo"."CUSTOMER" "CUSTOMER" ON "LOC_DET"."LOD_Cus_No"="CUSTOMER"."CUS_Cus_No") INNER JOIN "off005"."dbo"."STANDARD" "STANDARD" ON ((("LOC_DET"."LOD_Std_Id"="STANDARD"."STD_Std_Id") AND ("LOC_DET"."LOD_Comp_Code"="STANDARD"."STD_Comp_Code")) AND ("LOC_DET"."LOD_Cus_No"="STANDARD"."STD_Cus_No")) AND ("CUSTOMER"."CUS_Cus_No"="STANDARD"."STD_Cus_No")
 WHERE  "LOC_DET"."LOD_Cus_No"='ZZZ999' AND "LOC_DET"."LOD_Comp_Code"='Z'
 ORDER BY "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class"


 select * from "off005"."dbo"."STANDARD" where STD_Std_Id = 'WKSTN-B1'

 
  select * from "off005"."dbo"."LOC_DET" where "LOD_Location_Id" = 'ROW30'
  
  
  /*final*/
    SELECT "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class", "LOC_DET"."LOD_Loc_Qty_On_Hand", "COMPANY"."CMP_Name", "CUSTOMER"."CUS_Name", "LOC_DET"."LOD_Comp_Code", "LOC_DET"."LOD_Cus_No", "LOC_DET"."LOD_Building_Id"
 FROM   (("off005"."dbo"."LOC_DET" "LOC_DET" INNER JOIN "off005"."dbo"."COMPANY" "COMPANY"
  ON "LOC_DET"."LOD_Comp_Code"="COMPANY"."CMP_Comp_Code")
  INNER JOIN "off005"."dbo"."CUSTOMER" "CUSTOMER" ON ("LOC_DET"."LOD_Cus_No"="CUSTOMER"."CUS_Cus_No")
   AND ("LOC_DET"."LOD_Comp_Code"="CUSTOMER"."CUS_Comp_Code"))
    INNER JOIN "off005"."dbo"."STANDARD" "STANDARD"
	 ON (("LOC_DET"."LOD_Std_Id"="STANDARD"."STD_Std_Id") AND ("LOC_DET"."LOD_Comp_Code"="STANDARD"."STD_Comp_Code")) AND ("LOC_DET"."LOD_Cus_No"="STANDARD"."STD_Cus_No")
 WHERE  "LOC_DET"."LOD_Cus_No"='WINTRUST' AND "LOC_DET"."LOD_Comp_Code"='A' AND "LOC_DET"."LOD_Building_Id"='WINTRUST'
 ORDER BY "LOC_DET"."LOD_Location_Id", "STANDARD"."STD_Std_Class"



/*report 1*/
 select * from "off005"."dbo"."LOC_DET" where "LOD_Location_Id" = 'ROW30'
  select * from "off005"."dbo"."LOC_DET" where "LOD_Comp_Code" = 'T'
    select * from "off005"."dbo"."LOC_DET" where LOD_Building_Id = 'WINTRUST' AND LOD_Comp_Code = 'A' and LOD_Cus_No = 'WINTRUST'
	
	/*report 2*/
	select * from "off005"."dbo"."LOC_DET" where LOD_Building_Id = 'WHSEZZZ999' AND LOD_Comp_Code = 'Z' and LOD_Cus_No = 'ZZZ999' AND "LOD_Location_Id" = '02063'
	
/*report 3*/	
select * from STANDARD INNER JOIN "LOC_DET" on
(STD_Std_Id = LOD_Std_Id)
where LOD_Building_Id = 'whse76' AND LOD_Comp_Code = 'a' and LOD_Cus_No = 'adv022' AND STD_Comp_Code = 'A' and STD_Cus_No = 'adv022'
order by STD_Catalog_No ASC,   STD_Std_Id ASC