######################################################################
#<
#
# Function: p6_aws_svc_lambda_list()
#
#>
######################################################################
p6_aws_svc_lambda_list() {

    p6_aws_cli_cmd lambda list-functions \
        --output text \
        --query "'Functions[*].[LastModified, Timeout, MemorySize, Runtime, FunctionName, Role, Description]'"
}
