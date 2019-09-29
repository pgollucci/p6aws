######################################################################
#<
#
# Function:
#      = p6_aws_ec2_export_tasks_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_export_tasks_describe() {

    p6_run_read_cmd aws ec2 describe-export-tasks "$@"
}