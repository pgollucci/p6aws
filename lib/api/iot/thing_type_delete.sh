######################################################################
#<
#
# Function:
#	p6_aws_iot_thing_type_delete(thing_type_name)
#
#  Args:
#	thing_type_name - 
#
#>
######################################################################
p6_aws_iot_thing_type_delete() {
    local thing_type_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-thing-type --thing-type-name $thing_type_name "$@"
}