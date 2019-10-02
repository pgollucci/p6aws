######################################################################
#<
#
# Function:
#	p6_aws_elastictranscoder_preset_read(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_elastictranscoder_preset_read() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws elastictranscoder read-preset --id $id "$@"
}