######################################################################
#<
#
# Function:
#	p6_aws_kms_resource_tags_list(key_id)
#
#  Args:
#	key_id - 
#
#>
######################################################################
p6_aws_kms_resource_tags_list() {
    local key_id="$1"
    shift 1

    p6_run_read_cmd aws kms list-resource-tags --key-id $key_id "$@"
}