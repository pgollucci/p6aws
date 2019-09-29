######################################################################
#<
#
# Function:
#      = p6_aws_mgh_migration_tasks_list()
#
#
#
#>
######################################################################
p6_aws_mgh_migration_tasks_list() {

    p6_run_read_cmd aws mgh list-migration-tasks "$@"
}