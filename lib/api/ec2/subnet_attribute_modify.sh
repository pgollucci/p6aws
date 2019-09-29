######################################################################
#<
#
# Function:
#      = p6_aws_ec2_subnet_attribute_modify(subnet_id)
#
# Arg(s):
#    subnet_id - 
#
#
#>
######################################################################
p6_aws_ec2_subnet_attribute_modify() {
    local subnet_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-subnet-attribute --subnet-id $subnet_id "$@"
}