######################################################################
#<
#
# Function:
#	p6_aws_iotevents_input_delete(input_name)
#
#  Args:
#	input_name - 
#
#>
######################################################################
p6_aws_iotevents_input_delete() {
    local input_name="$1"
    shift 1

    p6_run_write_cmd aws iotevents delete-input --input-name $input_name "$@"
}