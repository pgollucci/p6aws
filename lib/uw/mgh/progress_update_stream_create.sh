######################################################################
#<
#
# Function:
#      = p6_aws_mgh_run(progress_update_stream_name, progress_update_stream_name)
#
# Arg(s):
#    progress_update_stream_name - 
#    progress_update_stream_name - 
#
#
#>
######################################################################
p6_aws_mgh_run() {
        local progress_update_stream_name="$1"
        shift 1

    cond_log_and_run aws mgh create-progress-update-stream --progress-update-stream-name $progress_update_stream_name --dry-run "$@"
}
