######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_volume_detach(volume_arn)
#
#  Args:
#	volume_arn - 
#
#>
######################################################################
p6_aws_storagegateway_volume_detach() {
    local volume_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway detach-volume --volume-arn $volume_arn "$@"
}