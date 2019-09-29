######################################################################
#<
#
# Function:
#      = p6_aws_iam_instance_profiles_for_role_list(role_name)
#
# Arg(s):
#    role_name - 
#
#
#>
######################################################################
p6_aws_iam_instance_profiles_for_role_list() {
    local role_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-instance-profiles-for-role --role-name $role_name "$@"
}