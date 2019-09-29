######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_members_delete()
#
#
#
#>
######################################################################
p6_aws_securityhub_members_delete() {

    p6_run_write_cmd aws securityhub delete-members "$@"
}