######################################################################
#<
#
# Function:
#	p6_aws_xray_telemetry_records_put(telemetry_records)
#
#  Args:
#	telemetry_records - 
#
#>
######################################################################
p6_aws_xray_telemetry_records_put() {
    local telemetry_records="$1"
    shift 1

    p6_run_write_cmd aws xray put-telemetry-records --telemetry-records $telemetry_records "$@"
}