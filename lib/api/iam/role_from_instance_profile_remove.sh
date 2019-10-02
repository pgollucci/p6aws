######################################################################
#<
#
# Function:
#	p6_aws_iam_role_from_instance_profile_remove(instance_profile_name, role_name)
#
#  Args:
#	instance_profile_name - 
#	role_name - 
#
#>
######################################################################
p6_aws_iam_role_from_instance_profile_remove() {
    local instance_profile_name="$1"
    local role_name="$2"
    shift 2

    p6_run_write_cmd aws iam remove-role-from-instance-profile --instance-profile-name $instance_profile_name --role-name $role_name "$@"
}