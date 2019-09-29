######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_registration_tasks_list()
#
#
#
#>
######################################################################
p6_aws_iot_thing_registration_tasks_list() {

    p6_run_read_cmd aws iot list-thing-registration-tasks "$@"
}