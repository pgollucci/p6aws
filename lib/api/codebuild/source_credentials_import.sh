######################################################################
#<
#
# Function:
#	p6_aws_codebuild_source_credentials_import(token, server_type, auth_type)
#
#  Args:
#	token - 
#	server_type - 
#	auth_type - 
#
#>
######################################################################
p6_aws_codebuild_source_credentials_import() {
    local token="$1"
    local server_type="$2"
    local auth_type="$3"
    shift 3

    p6_run_write_cmd aws codebuild import-source-credentials --token $token --server-type $server_type --auth-type $auth_type "$@"
}