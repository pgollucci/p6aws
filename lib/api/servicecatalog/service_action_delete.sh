######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_service_action_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_servicecatalog_service_action_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog delete-service-action --id $id "$@"
}