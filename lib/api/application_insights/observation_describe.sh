######################################################################
#<
#
# Function:
#	p6_aws_application_insights_observation_describe(observation_id)
#
#  Args:
#	observation_id - 
#
#>
######################################################################
p6_aws_application_insights_observation_describe() {
    local observation_id="$1"
    shift 1

    p6_run_read_cmd aws application-insights describe-observation --observation-id $observation_id "$@"
}