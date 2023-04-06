// load the derived data

use "..\stata_data\derived\food-health_derived.dta", replace

//generate new variables with transformation
gen ln_weight = ln(weight)
gen ln_height = ln(height)

//create graph and save it
twoway scatter blood_pressure bmi
graph export "..\stata_figure\blood_pressure_bmi.jpg", replace

//run regression
reg blood_pressure bmi hdl weight gr_ice_cream gr_cheese
