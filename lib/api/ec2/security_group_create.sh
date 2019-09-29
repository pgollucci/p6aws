######################################################################
#<
#
# Function:
#      = p6_aws_ec2_security_group_create(description, group_name)
#
# Arg(s):
#    description - 
#    group_name - 
#
#
#>
######################################################################
p6_aws_ec2_security_group_create() {
    local description="$1"
    local group_name="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-security-group --description $description --group-name $group_name "$@"
}