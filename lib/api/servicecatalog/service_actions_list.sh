######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_service_actions_list()
#
#
#
#>
######################################################################
p6_aws_servicecatalog_service_actions_list() {

    p6_run_read_cmd aws servicecatalog list-service-actions "$@"
}