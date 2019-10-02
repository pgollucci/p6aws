######################################################################
#<
#
# Function:
#	p6_aws_appstream_user_enable(user_name, authentication_type)
#
#  Args:
#	user_name - 
#	authentication_type - 
#
#>
######################################################################
p6_aws_appstream_user_enable() {
    local user_name="$1"
    local authentication_type="$2"
    shift 2

    p6_run_write_cmd aws appstream enable-user --user-name $user_name --authentication-type $authentication_type "$@"
}