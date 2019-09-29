######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_code_repository_create(code_repository_name, git_config)
#
# Arg(s):
#    code_repository_name - 
#    git_config - 
#
#
#>
######################################################################
p6_aws_sagemaker_code_repository_create() {
    local code_repository_name="$1"
    local git_config="$2"
    shift 2

    p6_run_write_cmd aws sagemaker create-code-repository --code-repository-name $code_repository_name --git-config $git_config "$@"
}