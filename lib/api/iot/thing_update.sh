######################################################################
#<
#
# Function:
#	p6_aws_iot_thing_update(thing_name)
#
#  Args:
#	thing_name - 
#
#>
######################################################################
p6_aws_iot_thing_update() {
    local thing_name="$1"
    shift 1

    p6_run_write_cmd aws iot update-thing --thing-name $thing_name "$@"
}