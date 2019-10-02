######################################################################
#<
#
# Function:
#	p6_aws_lightsail_key_pair_delete(key_pair_name)
#
#  Args:
#	key_pair_name - 
#
#>
######################################################################
p6_aws_lightsail_key_pair_delete() {
    local key_pair_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-key-pair --key-pair-name $key_pair_name "$@"
}