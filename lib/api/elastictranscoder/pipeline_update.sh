p6_aws_elastictranscoder_pipeline_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws elastictranscoder update-pipeline --id $id "$@"
}
