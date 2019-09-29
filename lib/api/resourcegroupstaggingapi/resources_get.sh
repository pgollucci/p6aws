######################################################################
#<
#
# Function:
#      = p6_aws_resourcegroupstaggingapi_resources_get()
#
#
#
#>
######################################################################
p6_aws_resourcegroupstaggingapi_resources_get() {

    p6_run_read_cmd aws resourcegroupstaggingapi get-resources "$@"
}