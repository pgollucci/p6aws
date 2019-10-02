######################################################################
#<
#
# Function:
#	p6_aws_redshift_snapshot_copy_grants_describe()
#
#>
######################################################################
p6_aws_redshift_snapshot_copy_grants_describe() {

    p6_run_read_cmd aws redshift describe-snapshot-copy-grants "$@"
}