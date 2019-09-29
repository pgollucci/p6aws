######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_my_user_profile_describe()
#
#
#
#>
######################################################################
p6_aws_opsworks_my_user_profile_describe() {

    p6_run_read_cmd aws opsworks describe-my-user-profile "$@"
}