######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_upload_status_get(upload_id)
#
# Arg(s):
#    upload_id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_upload_status_get() {
    local upload_id="$1"
    shift 1

    p6_run_read_cmd aws iotthingsgraph get-upload-status --upload-id $upload_id "$@"
}