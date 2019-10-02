######################################################################
#<
#
# Function:
#	p6_aws_iot_attached_policies_list(target)
#
#  Args:
#	target - 
#
#>
######################################################################
p6_aws_iot_attached_policies_list() {
    local target="$1"
    shift 1

    p6_run_read_cmd aws iot list-attached-policies --target $target "$@"
}