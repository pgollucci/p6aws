######################################################################
#<
#
# Function:
#	p6_aws_securityhub_members_create()
#
#>
######################################################################
p6_aws_securityhub_members_create() {

    p6_run_write_cmd aws securityhub create-members "$@"
}