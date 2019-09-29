######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_simulation_job_create(max_job_duration_in_seconds, iam_role)
#
# Arg(s):
#    max_job_duration_in_seconds - 
#    iam_role - 
#
#
#>
######################################################################
p6_aws_robomaker_simulation_job_create() {
    local max_job_duration_in_seconds="$1"
    local iam_role="$2"
    shift 2

    p6_run_write_cmd aws robomaker create-simulation-job --max-job-duration-in-seconds $max_job_duration_in_seconds --iam-role $iam_role "$@"
}