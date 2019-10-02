######################################################################
#<
#
# Function:
#	p6_aws_xray_group_delete()
#
#>
######################################################################
p6_aws_xray_group_delete() {

    p6_run_write_cmd aws xray delete-group "$@"
}