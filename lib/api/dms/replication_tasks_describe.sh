######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_tasks_describe()
#
#
#
#>
######################################################################
p6_aws_dms_replication_tasks_describe() {

    p6_run_read_cmd aws dms describe-replication-tasks "$@"
}