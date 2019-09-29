######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_channel_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_mediapackage_channel_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage delete-channel --id $id "$@"
}