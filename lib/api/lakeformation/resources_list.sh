######################################################################
#<
#
# Function:
#      = p6_aws_lakeformation_resources_list()
#
#
#
#>
######################################################################
p6_aws_lakeformation_resources_list() {

    p6_run_read_cmd aws lakeformation list-resources "$@"
}