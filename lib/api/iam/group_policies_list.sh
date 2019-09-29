######################################################################
#<
#
# Function:
#      = p6_aws_iam_group_policies_list(group_name)
#
# Arg(s):
#    group_name - 
#
#
#>
######################################################################
p6_aws_iam_group_policies_list() {
    local group_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-group-policies --group-name $group_name "$@"
}