######################################################################
#<
#
# Function:
#	p6_aws_iot_indexing_configuration_get()
#
#>
######################################################################
p6_aws_iot_indexing_configuration_get() {

    p6_run_read_cmd aws iot get-indexing-configuration "$@"
}