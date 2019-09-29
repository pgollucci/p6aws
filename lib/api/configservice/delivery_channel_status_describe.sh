######################################################################
#<
#
# Function:
#      = p6_aws_configservice_delivery_channel_status_describe()
#
#
#
#>
######################################################################
p6_aws_configservice_delivery_channel_status_describe() {

    p6_run_read_cmd aws configservice describe-delivery-channel-status "$@"
}