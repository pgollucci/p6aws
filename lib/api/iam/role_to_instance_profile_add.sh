######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_to_instance_profile_add(instance_profile_name, role_name)
#
# Arg(s):
#    instance_profile_name - 
#    role_name - 
#
#
#>
######################################################################
p6_aws_iam_role_to_instance_profile_add() {
    local instance_profile_name="$1"
    local role_name="$2"
    shift 2

    p6_run_write_cmd aws iam add-role-to-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name "$@"
}