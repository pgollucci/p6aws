######################################################################
#<
#
# Function:
#	p6_aws_guardduty_filter_create(detector_id, name, finding_criteria)
#
#  Args:
#	detector_id - 
#	name - 
#	finding_criteria - 
#
#>
######################################################################
p6_aws_guardduty_filter_create() {
    local detector_id="$1"
    local name="$2"
    local finding_criteria="$3"
    shift 3

    p6_run_write_cmd aws guardduty create-filter --detector-id $detector_id --name $name --finding-criteria $finding_criteria "$@"
}