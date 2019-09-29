######################################################################
#<
#
# Function:
#      = p6_aws_lambda_event_source_mappings_list()
#
#
#
#>
######################################################################
p6_aws_lambda_event_source_mappings_list() {

    p6_run_read_cmd aws lambda list-event-source-mappings "$@"
}