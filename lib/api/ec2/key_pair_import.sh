######################################################################
#<
#
# Function:
#      = p6_aws_ec2_key_pair_import(key_name, public_key_material)
#
# Arg(s):
#    key_name - 
#    public_key_material - 
#
#
#>
######################################################################
p6_aws_ec2_key_pair_import() {
    local key_name="$1"
    local public_key_material="$2"
    shift 2

    p6_run_write_cmd aws ec2 import-key-pair --key-name $key_name --public-key-material $public_key_material "$@"
}