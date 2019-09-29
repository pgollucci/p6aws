######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_stack_clone(source_stack_id, service_role_arn)
#
# Arg(s):
#    source_stack_id - 
#    service_role_arn - 
#
#
#>
######################################################################
p6_aws_opsworks_stack_clone() {
    local source_stack_id="$1"
    local service_role_arn="$2"
    shift 2

    p6_run_write_cmd aws opsworks clone-stack --source-stack-id $source_stack_id --service-role-arn $service_role_arn "$@"
}