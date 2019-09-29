######################################################################
#<
#
# Function:
#      = p6_aws_iam_group_delete(group_name)
#
# Arg(s):
#    group_name - 
#
#
#>
######################################################################
p6_aws_iam_group_delete() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-group --group-name $group_name "$@"
}