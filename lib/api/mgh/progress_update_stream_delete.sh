######################################################################
#<
#
# Function:
#	p6_aws_mgh_progress_update_stream_delete(progress_update_stream_name)
#
#  Args:
#	progress_update_stream_name - 
#
#>
######################################################################
p6_aws_mgh_progress_update_stream_delete() {
    local progress_update_stream_name="$1"
    shift 1

    p6_run_write_cmd aws mgh delete-progress-update-stream --progress-update-stream-name $progress_update_stream_name "$@"
}