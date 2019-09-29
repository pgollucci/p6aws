######################################################################
#<
#
# Function:
#      = p6_aws_iam_instance_profile_delete(instance_profile_name)
#
# Arg(s):
#    instance_profile_name - 
#
#
#>
######################################################################
p6_aws_iam_instance_profile_delete() {
    local instance_profile_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-instance-profile --instance-profile-name $instance_profile_name "$@"
}