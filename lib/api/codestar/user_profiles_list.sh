######################################################################
#<
#
# Function:
#	p6_aws_codestar_user_profiles_list()
#
#>
######################################################################
p6_aws_codestar_user_profiles_list() {

    p6_run_read_cmd aws codestar list-user-profiles "$@"
}