######################################################################
#<
#
# Function:
#	p6_aws_kms_resource_tag(key_id, tags)
#
#  Args:
#	key_id - 
#	tags - 
#
#>
######################################################################
p6_aws_kms_resource_tag() {
    local key_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws kms tag-resource --key-id $key_id --tags $tags "$@"
}