######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_members_disassociate()
#
#
#
#>
######################################################################
p6_aws_securityhub_members_disassociate() {

    p6_run_write_cmd aws securityhub disassociate-members "$@"
}