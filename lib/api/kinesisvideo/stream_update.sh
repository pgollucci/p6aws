######################################################################
#<
#
# Function:
#      = p6_aws_kinesisvideo_stream_update(current_version)
#
# Arg(s):
#    current_version - 
#
#
#>
######################################################################
p6_aws_kinesisvideo_stream_update() {
    local current_version="$1"
    shift 1

    p6_run_write_cmd aws kinesisvideo update-stream --current-version $current_version "$@"
}