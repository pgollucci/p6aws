######################################################################
#<
#
# Function:
#      = p6_aws_ec2_conversion_tasks_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_conversion_tasks_describe() {

    p6_run_read_cmd aws ec2 describe-conversion-tasks "$@"
}