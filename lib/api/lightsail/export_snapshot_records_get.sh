######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_export_snapshot_records_get()
#
#
#
#>
######################################################################
p6_aws_lightsail_export_snapshot_records_get() {

    p6_run_read_cmd aws lightsail get-export-snapshot-records "$@"
}