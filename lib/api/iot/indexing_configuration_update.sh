######################################################################
#<
#
# Function:
#	p6_aws_iot_indexing_configuration_update()
#
#>
######################################################################
p6_aws_iot_indexing_configuration_update() {

    p6_run_write_cmd aws iot update-indexing-configuration "$@"
}