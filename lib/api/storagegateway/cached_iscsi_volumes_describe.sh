######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_cached_iscsi_volumes_describe(volume_arns)
#
# Arg(s):
#    volume_arns - 
#
#
#>
######################################################################
p6_aws_storagegateway_cached_iscsi_volumes_describe() {
    local volume_arns="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-cached-iscsi-volumes --volume-arns $volume_arns "$@"
}