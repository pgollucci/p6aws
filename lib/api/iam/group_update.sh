######################################################################
#<
#
# Function:
#      = p6_aws_iam_group_update(group_name)
#
# Arg(s):
#    group_name - 
#
#
#>
######################################################################
p6_aws_iam_group_update() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws iam update-group --group-name $group_name "$@"
}