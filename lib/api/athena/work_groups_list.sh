######################################################################
#<
#
# Function:
#	p6_aws_athena_work_groups_list()
#
#>
######################################################################
p6_aws_athena_work_groups_list() {

    p6_run_read_cmd aws athena list-work-groups "$@"
}