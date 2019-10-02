######################################################################
#<
#
# Function:
#	p6_aws_configservice_pending_aggregation_requests_describe()
#
#>
######################################################################
p6_aws_configservice_pending_aggregation_requests_describe() {

    p6_run_read_cmd aws configservice describe-pending-aggregation-requests "$@"
}