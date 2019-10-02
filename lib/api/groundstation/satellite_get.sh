######################################################################
#<
#
# Function:
#	p6_aws_groundstation_satellite_get(satellite_id)
#
#  Args:
#	satellite_id - 
#
#>
######################################################################
p6_aws_groundstation_satellite_get() {
    local satellite_id="$1"
    shift 1

    p6_run_read_cmd aws groundstation get-satellite --satellite-id $satellite_id "$@"
}