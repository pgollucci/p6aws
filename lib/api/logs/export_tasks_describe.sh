######################################################################
#<
#
# Function:
#      = p6_aws_logs_export_tasks_describe()
#
#
#
#>
######################################################################
p6_aws_logs_export_tasks_describe() {

    p6_run_read_cmd aws logs describe-export-tasks "$@"
}