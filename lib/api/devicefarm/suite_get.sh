######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_suite_get(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_suite_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-suite --arn $arn "$@"
}