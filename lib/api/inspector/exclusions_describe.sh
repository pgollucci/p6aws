######################################################################
#<
#
# Function:
#	p6_aws_inspector_exclusions_describe(exclusion_arns)
#
#  Args:
#	exclusion_arns - 
#
#>
######################################################################
p6_aws_inspector_exclusions_describe() {
    local exclusion_arns="$1"
    shift 1

    p6_run_read_cmd aws inspector describe-exclusions --exclusion-arns $exclusion_arns "$@"
}