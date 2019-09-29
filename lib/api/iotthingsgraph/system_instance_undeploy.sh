######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_system_instance_undeploy()
#
#
#
#>
######################################################################
p6_aws_iotthingsgraph_system_instance_undeploy() {

    p6_run_write_cmd aws iotthingsgraph undeploy-system-instance "$@"
}