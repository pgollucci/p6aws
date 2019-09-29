######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_system_instances_search()
#
#
#
#>
######################################################################
p6_aws_iotthingsgraph_system_instances_search() {

    p6_run_write_cmd aws iotthingsgraph search-system-instances "$@"
}