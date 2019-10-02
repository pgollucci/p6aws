######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_suites_list(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_suites_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-suites --arn $arn "$@"
}