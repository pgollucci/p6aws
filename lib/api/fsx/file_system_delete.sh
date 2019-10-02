######################################################################
#<
#
# Function:
#	p6_aws_fsx_file_system_delete(file_system_id)
#
#  Args:
#	file_system_id - 
#
#>
######################################################################
p6_aws_fsx_file_system_delete() {
    local file_system_id="$1"
    shift 1

    p6_run_write_cmd aws fsx delete-file-system --file-system-id $file_system_id "$@"
}