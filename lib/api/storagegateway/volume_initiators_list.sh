######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_volume_initiators_list(volume_arn)
#
#  Args:
#	volume_arn - 
#
#>
######################################################################
p6_aws_storagegateway_volume_initiators_list() {
    local volume_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway list-volume-initiators --volume-arn $volume_arn "$@"
}