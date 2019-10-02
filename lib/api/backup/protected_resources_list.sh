######################################################################
#<
#
# Function:
#	p6_aws_backup_protected_resources_list()
#
#>
######################################################################
p6_aws_backup_protected_resources_list() {

    p6_run_read_cmd aws backup list-protected-resources "$@"
}