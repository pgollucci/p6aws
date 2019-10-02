######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_change_set_describe(change_set_name)
#
#  Args:
#	change_set_name - 
#
#>
######################################################################
p6_aws_cloudformation_change_set_describe() {
    local change_set_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation describe-change-set --change-set-name $change_set_name "$@"
}