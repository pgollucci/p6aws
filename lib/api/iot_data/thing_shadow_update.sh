######################################################################
#<
#
# Function:
#	p6_aws_iot_data_thing_shadow_update(thing_name, payload)
#
#  Args:
#	thing_name - 
#	payload - 
#
#>
######################################################################
p6_aws_iot_data_thing_shadow_update() {
    local thing_name="$1"
    local payload="$2"
    shift 2

    p6_run_write_cmd aws iot-data update-thing-shadow --thing-name $thing_name --payload $payload "$@"
}