######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_code_repository_delete(code_repository_name)
#
# Arg(s):
#    code_repository_name - 
#
#
#>
######################################################################
p6_aws_sagemaker_code_repository_delete() {
    local code_repository_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-code-repository --code-repository-name $code_repository_name "$@"
}