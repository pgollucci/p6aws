######################################################################
#<
#
# Function:
#	p6_aws_ram_sharing_with_aws_organization_enable()
#
#>
######################################################################
p6_aws_ram_sharing_with_aws_organization_enable() {

    p6_run_write_cmd aws ram enable-sharing-with-aws-organization "$@"
}