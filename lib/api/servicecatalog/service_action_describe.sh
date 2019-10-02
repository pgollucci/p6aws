######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_service_action_describe(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_servicecatalog_service_action_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-service-action --id $id "$@"
}