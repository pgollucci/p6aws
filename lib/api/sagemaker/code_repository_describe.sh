######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_code_repository_describe(code_repository_name)
#
#  Args:
#	code_repository_name - 
#
#>
######################################################################
p6_aws_sagemaker_code_repository_describe() {
    local code_repository_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-code-repository --code-repository-name $code_repository_name "$@"
}