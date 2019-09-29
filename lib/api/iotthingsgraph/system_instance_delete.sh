######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_system_instance_delete()
#
#
#
#>
######################################################################
p6_aws_iotthingsgraph_system_instance_delete() {

    p6_run_write_cmd aws iotthingsgraph delete-system-instance "$@"
}