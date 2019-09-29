######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_namespace_delete()
#
#
#
#>
######################################################################
p6_aws_iotthingsgraph_namespace_delete() {

    p6_run_write_cmd aws iotthingsgraph delete-namespace "$@"
}