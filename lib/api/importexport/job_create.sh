######################################################################
#<
#
# Function:
#      = p6_aws_importexport_job_create(job_type, manifest, validate_only)
#
# Arg(s):
#    job_type - 
#    manifest - 
#    validate_only - 
#
#
#>
######################################################################
p6_aws_importexport_job_create() {
    local job_type="$1"
    local manifest="$2"
    local validate_only="$3"
    shift 3

    p6_run_write_cmd aws importexport create-job --job-type $job_type --manifest $manifest --validate-only $validate_only "$@"
}