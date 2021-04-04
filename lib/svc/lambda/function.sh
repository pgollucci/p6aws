######################################################################
#<
#
# Function: p6_aws_svc_lambda_functions_list()
#
#>
######################################################################
p6_aws_svc_lambda_functions_list() {

    p6_aws_cli_cmd lambda list-functions \
        --output text \
        --query "'Functions[*].[LastModified, Timeout, MemorySize, Runtime, FunctionName, Role, Description]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_lambda_functions_runtimes()
#
#>
######################################################################
p6_aws_svc_lambda_functions_runtimes() {

    p6_aws_svc_lambda_list |
        awk '{ print $4 }' |
        sort |
        uniq -c |
        sort -nr
}

######################################################################
#<
#
# Function: p6_aws_svc_lambda_functions_by_runtime()
#
#>
######################################################################
p6_aws_svc_lambda_functions_by_runtime() {

    p6_aws_cli_cmd lambda list-functions |
        jq ".Functions | group_by(.Runtime)|[.[]|{ runtime:.[0].Runtime, functions:[.[]|.FunctionName] }]"
}

######################################################################
#<
#
# Function: p6_aws_svc_lambda_functions_envs()
#
#>
######################################################################
p6_aws_svc_lambda_functions_envs() {

    p6_aws_cli_cmd lambda list-functions |
        jq -r '[.Functions[]|{name: .FunctionName, env: .Environment.Variables}]|.[]|select(.env|length > 0)'
}
