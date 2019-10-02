######################################################################
#<
#
# Function:
#	p6_aws_datasync_agents_list()
#
#>
######################################################################
p6_aws_datasync_agents_list() {

    p6_run_read_cmd aws datasync list-agents "$@"
}