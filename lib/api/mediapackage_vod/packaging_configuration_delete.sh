######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_vod_packaging_configuration_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_mediapackage_vod_packaging_configuration_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage-vod delete-packaging-configuration --id $id "$@"
}