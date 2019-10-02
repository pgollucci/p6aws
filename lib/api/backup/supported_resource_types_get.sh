######################################################################
#<
#
# Function:
#	p6_aws_backup_supported_resource_types_get()
#
#>
######################################################################
p6_aws_backup_supported_resource_types_get() {

    p6_run_read_cmd aws backup get-supported-resource-types "$@"
}