######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_channel_update(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_mediapackage_channel_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage update-channel --id $id "$@"
}