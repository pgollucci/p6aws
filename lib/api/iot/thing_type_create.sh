######################################################################
#<
#
# Function:
#	p6_aws_iot_thing_type_create(thing_type_name)
#
#  Args:
#	thing_type_name - 
#
#>
######################################################################
p6_aws_iot_thing_type_create() {
    local thing_type_name="$1"
    shift 1

    p6_run_write_cmd aws iot create-thing-type --thing-type-name $thing_type_name "$@"
}