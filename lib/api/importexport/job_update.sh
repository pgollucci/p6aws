######################################################################
#<
#
# Function:
#      = p6_aws_importexport_job_update(job_id, manifest, job_type, validate_only)
#
# Arg(s):
#    job_id - 
#    manifest - 
#    job_type - 
#    validate_only - 
#
#
#>
######################################################################
p6_aws_importexport_job_update() {
    local job_id="$1"
    local manifest="$2"
    local job_type="$3"
    local validate_only="$4"
    shift 4

    p6_run_write_cmd aws importexport update-job --job-id $job_id --manifest $manifest --job-type $job_type --validate-only $validate_only "$@"
}