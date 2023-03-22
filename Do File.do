import excel "C:\Users\ga041780\Desktop\Schenoni FPA Harvard Dataverse.xlsx", sheet("Data") firstrow (15 vars, 142 obs)
summarize ironandsteelproduction
twoway (line ironandsteelproduction year if ccode==160, lcolor(blue)) (line ironandsteelproduction year if ccode==140, lcolor(red)  title("Iron and Steel Production in Argentina and Brazil" "from 1930 to 2000") legend( label (1 "Argentina") label (2 "Brazil")) note("Source: Schenoni, Luis, 2017 The Argentina-Brazil Regional Power Transition"))
twoway scatter militaryexpendituresincurren year if ccode==160, title("Military Expenditure in Argentina""From 1930 to 2000") legend( label (1 "Military Expenditures in Million USD")) || lfit militaryexpendituresincurren year if ccode==160, range(1950 2000)

///////////////////////////////////////////////////////////////////////////////////////////////

import excel "C:\Users\ga041780\Desktop\ARG World Bank Data.xls", sheet("Data") firstrow
(66 vars, 1,442 obs)
sum BI BJ BK BL BM if IndicatorCode=="TX.VAL.TECH.MF.ZS"
graph bar BJ BK BL BM blabel if IndicatorCode=="TX.VAL.TECH.MF.ZS" 





