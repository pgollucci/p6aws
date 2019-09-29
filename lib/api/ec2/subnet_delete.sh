######################################################################
#<
#
# Function:
#      = p6_aws_ec2_subnet_delete(subnet_id)
#
# Arg(s):
#    subnet_id - 
#
#
#>
######################################################################
p6_aws_ec2_subnet_delete() {
    local subnet_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-subnet --subnet-id $subnet_id "$@"
}