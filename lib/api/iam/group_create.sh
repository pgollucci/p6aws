######################################################################
#<
#
# Function:
#	p6_aws_iam_group_create(group_name)
#
#  Args:
#	group_name - 
#
#>
######################################################################
p6_aws_iam_group_create() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws iam create-group --group-name $group_name "$@"
}