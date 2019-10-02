######################################################################
#<
#
# Function:
#	p6_aws_configservice_delivery_channels_describe()
#
#>
######################################################################
p6_aws_configservice_delivery_channels_describe() {

    p6_run_read_cmd aws configservice describe-delivery-channels "$@"
}