######################################################################
#<
#
# Function:
#      = p6_aws_iam_group_get(group_name)
#
# Arg(s):
#    group_name - 
#
#
#>
######################################################################
p6_aws_iam_group_get() {
    local group_name="$1"
    shift 1

    p6_run_read_cmd aws iam get-group --group-name $group_name "$@"
}