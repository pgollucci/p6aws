######################################################################
#<
#
# Function:
#      = p6_aws_kinesisanalyticsv2_input_schema_discover(service_execution_role)
#
# Arg(s):
#    service_execution_role - 
#
#
#>
######################################################################
p6_aws_kinesisanalyticsv2_input_schema_discover() {
    local service_execution_role="$1"
    shift 1

    p6_run_write_cmd aws kinesisanalyticsv2 discover-input-schema --service-execution-role $service_execution_role "$@"
}