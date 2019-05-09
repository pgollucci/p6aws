p6_aws_elastictranscoder_job_create() {
    local pipeline_id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder create-job --pipeline-id $pipeline_id "$@"
}
