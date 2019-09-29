######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_my_user_profile_update()
#
#
#
#>
######################################################################
p6_aws_opsworks_my_user_profile_update() {

    p6_run_write_cmd aws opsworks update-my-user-profile "$@"
}