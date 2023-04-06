// load the derived data

use "..\stata_data\derived\food-health_derived.dta", replace

//generate new variables with transformation
gen ln_weight = ln(weight)
gen ln_height = ln(height)


