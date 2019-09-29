######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_deployment_create(stack_id, command)
#
# Arg(s):
#    stack_id - 
#    command - 
#
#
#>
######################################################################
p6_aws_opsworks_deployment_create() {
    local stack_id="$1"
    local command="$2"
    shift 2

    p6_run_write_cmd aws opsworks create-deployment --stack-id $stack_id --command $command "$@"
}