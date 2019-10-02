######################################################################
#<
#
# Function:
#	p6_aws_lightsail_key_pair_get(key_pair_name)
#
#  Args:
#	key_pair_name - 
#
#>
######################################################################
p6_aws_lightsail_key_pair_get() {
    local key_pair_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-key-pair --key-pair-name $key_pair_name "$@"
}