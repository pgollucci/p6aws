p6_aws_sagemaker_transform_job_create() {
    local transform_job_name="$1"
    local model_name="$2"
    local transform_input="$3"
    local transform_output="$4"
    local transform_resources="$5"
    shift 5

    p6_run_write_cmd aws sagemaker create-transform-job --transform-job-name $transform_job_name --model-name $model_name --transform-input $transform_input --transform-output $transform_output --transform-resources $transform_resources "$@"
}
