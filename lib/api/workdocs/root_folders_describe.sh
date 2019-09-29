######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_root_folders_describe(authentication_token)
#
# Arg(s):
#    authentication_token - 
#
#
#>
######################################################################
p6_aws_workdocs_root_folders_describe() {
    local authentication_token="$1"
    shift 1

    p6_run_read_cmd aws workdocs describe-root-folders --authentication-token $authentication_token "$@"
}