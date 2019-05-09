p6_aws_elastictranscoder_pipeline_status_update() {
    local id="$1"
    local status="$2"
    shift 2

    p6_run_write_cmd aws elastictranscoder update-pipeline-status --id $id --status $status "$@"
}
