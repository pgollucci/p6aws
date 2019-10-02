######################################################################
#<
#
# Function:
#	p6_aws_discovery_continuous_export_stop(export_id)
#
#  Args:
#	export_id - 
#
#>
######################################################################
p6_aws_discovery_continuous_export_stop() {
    local export_id="$1"
    shift 1

    p6_run_write_cmd aws discovery stop-continuous-export --export-id $export_id "$@"
}