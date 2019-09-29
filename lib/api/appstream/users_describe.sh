######################################################################
#<
#
# Function:
#      = p6_aws_appstream_users_describe(authentication_type)
#
# Arg(s):
#    authentication_type - 
#
#
#>
######################################################################
p6_aws_appstream_users_describe() {
    local authentication_type="$1"
    shift 1

    p6_run_read_cmd aws appstream describe-users --authentication-type $authentication_type "$@"
}