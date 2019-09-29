######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_deployment_job_sync(fleet)
#
# Arg(s):
#    fleet - 
#
#
#>
######################################################################
p6_aws_robomaker_deployment_job_sync() {
    local fleet="$1"
    shift 1

    p6_run_write_cmd aws robomaker sync-deployment-job --fleet $fleet "$@"
}