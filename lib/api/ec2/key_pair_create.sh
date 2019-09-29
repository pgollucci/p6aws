######################################################################
#<
#
# Function:
#      = p6_aws_ec2_key_pair_create(key_name)
#
# Arg(s):
#    key_name - 
#
#
#>
######################################################################
p6_aws_ec2_key_pair_create() {
    local key_name="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-key-pair --key-name $key_name "$@"
}