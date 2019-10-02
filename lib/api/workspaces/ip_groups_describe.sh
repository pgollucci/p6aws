######################################################################
#<
#
# Function:
#	p6_aws_workspaces_ip_groups_describe()
#
#>
######################################################################
p6_aws_workspaces_ip_groups_describe() {

    p6_run_read_cmd aws workspaces describe-ip-groups "$@"
}