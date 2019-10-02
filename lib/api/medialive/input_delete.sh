######################################################################
#<
#
# Function:
#	p6_aws_medialive_input_delete(input_id)
#
#  Args:
#	input_id - 
#
#>
######################################################################
p6_aws_medialive_input_delete() {
    local input_id="$1"
    shift 1

    p6_run_write_cmd aws medialive delete-input --input-id $input_id "$@"
}