######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_from_thing_group_remove()
#
#
#
#>
######################################################################
p6_aws_iot_thing_from_thing_group_remove() {

    p6_run_write_cmd aws iot remove-thing-from-thing-group "$@"
}