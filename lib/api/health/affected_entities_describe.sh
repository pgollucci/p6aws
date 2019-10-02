######################################################################
#<
#
# Function:
#	p6_aws_health_affected_entities_describe(filter)
#
#  Args:
#	filter - 
#
#>
######################################################################
p6_aws_health_affected_entities_describe() {
    local filter="$1"
    shift 1

    p6_run_read_cmd aws health describe-affected-entities --filter $filter "$@"
}