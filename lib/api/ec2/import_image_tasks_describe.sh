######################################################################
#<
#
# Function:
#      = p6_aws_ec2_import_image_tasks_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_import_image_tasks_describe() {

    p6_run_read_cmd aws ec2 describe-import-image-tasks "$@"
}