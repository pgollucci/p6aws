######################################################################
#<
#
# Function:
#	p6_aws_datasync_tasks_list()
#
#>
######################################################################
p6_aws_datasync_tasks_list() {

    p6_run_read_cmd aws datasync list-tasks "$@"
}