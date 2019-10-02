######################################################################
#<
#
# Function:
#	p6_aws_iot_thing_group_create(thing_group_name)
#
#  Args:
#	thing_group_name - 
#
#>
######################################################################
p6_aws_iot_thing_group_create() {
    local thing_group_name="$1"
    shift 1

    p6_run_write_cmd aws iot create-thing-group --thing-group-name $thing_group_name "$@"
}