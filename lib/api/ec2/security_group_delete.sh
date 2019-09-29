######################################################################
#<
#
# Function:
#      = p6_aws_ec2_security_group_delete()
#
#
#
#>
######################################################################
p6_aws_ec2_security_group_delete() {

    p6_run_write_cmd aws ec2 delete-security-group "$@"
}