######################################################################
#<
#
# Function:
#      = p6_aws_amplify_webhook_create(app_id, branch_name)
#
# Arg(s):
#    app_id - 
#    branch_name - 
#
#
#>
######################################################################
p6_aws_amplify_webhook_create() {
    local app_id="$1"
    local branch_name="$2"
    shift 2

    p6_run_write_cmd aws amplify create-webhook --app-id $app_id --branch-name $branch_name "$@"
}