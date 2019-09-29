######################################################################
#<
#
# Function:
#      = p6_aws_configservice_delivery_channel_delete(delivery_channel_name)
#
# Arg(s):
#    delivery_channel_name - 
#
#
#>
######################################################################
p6_aws_configservice_delivery_channel_delete() {
    local delivery_channel_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-delivery-channel --delivery-channel-name $delivery_channel_name "$@"
}