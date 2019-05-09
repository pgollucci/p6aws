p6_aws_importexport_job_create() {
    local job_type="$1"
    local manifest="$2"
    local validate_only="$3"
    shift 3

    p6_log_or_run aws importexport create-job --job-type $job_type --manifest $manifest --validate-only $validate_only "$@"
}
