p6_aws_elastictranscoder_pipeline_create() {
    local name="$1"
    local input_bucket="$2"
    local role="$3"
    shift 3

    p6_log_or_run aws elastictranscoder create-pipeline --name $name --input-bucket $input_bucket --role $role "$@"
}
