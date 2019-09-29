######################################################################
#<
#
# Function:
#      = p6_aws_firehose_delivery_streams_list()
#
#
#
#>
######################################################################
p6_aws_firehose_delivery_streams_list() {

    p6_run_read_cmd aws firehose list-delivery-streams "$@"
}