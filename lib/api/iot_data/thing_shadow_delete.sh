######################################################################
#<
#
# Function:
#	p6_aws_iot_data_thing_shadow_delete(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_data_thing_shadow_delete() {
    local thing_name="$1"
    shift 1

    p6_run_write_cmd aws iot-data delete-thing-shadow --thing-name $thing_name "$@"
}