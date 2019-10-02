######################################################################
#<
#
# Function:
#	p6_aws_resource_groups_groups_list()
#
#>
######################################################################
p6_aws_resource_groups_groups_list() {

    p6_run_read_cmd aws resource-groups list-groups "$@"
}