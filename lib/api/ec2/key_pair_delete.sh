######################################################################
#<
#
# Function:
#      = p6_aws_ec2_key_pair_delete(key_name)
#
# Arg(s):
#    key_name - 
#
#
#>
######################################################################
p6_aws_ec2_key_pair_delete() {
    local key_name="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-key-pair --key-name $key_name "$@"
}