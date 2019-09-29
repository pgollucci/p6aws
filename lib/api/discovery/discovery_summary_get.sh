######################################################################
#<
#
# Function:
#      = p6_aws_discovery_discovery_summary_get()
#
#
#
#>
######################################################################
p6_aws_discovery_discovery_summary_get() {

    p6_run_read_cmd aws discovery get-discovery-summary "$@"
}