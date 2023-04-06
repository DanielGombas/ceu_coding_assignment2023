//import data csv file

import delimited "..\stata_data\raw\food-health.csv", clear
keep if smoker==1 // analysing only smokers

// data only for not missing values of health
drop if missing(blood_pressure, heart_risk)

save "..\stata_data\derived\food-health_derived.dta", replace