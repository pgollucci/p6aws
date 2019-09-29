######################################################################
#<
#
# Function:
#      = p6_aws_amplify_deployment_start(app_id, branch_name)
#
# Arg(s):
#    app_id - 
#    branch_name - 
#
#
#>
######################################################################
p6_aws_amplify_deployment_start() {
    local app_id="$1"
    local branch_name="$2"
    shift 2

    p6_run_write_cmd aws amplify start-deployment --app-id $app_id --branch-name $branch_name "$@"
}