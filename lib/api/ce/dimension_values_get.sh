######################################################################
#<
#
# Function:
#	p6_aws_ce_dimension_values_get(time_period, dimension)
#
#  Args:
#	time_period - 
#	dimension - 
#
#>
######################################################################
p6_aws_ce_dimension_values_get() {
    local time_period="$1"
    local dimension="$2"
    shift 2

    p6_run_read_cmd aws ce get-dimension-values --time-period $time_period --dimension $dimension "$@"
}