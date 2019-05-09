p6_aws_iotevents_detector_model_create() {
    local detector_model_name="$1"
    local detector_model_definition="$2"
    local role_arn="$3"
    shift 3

    p6_run_write_cmd aws iotevents create-detector-model --detector-model-name $detector_model_name --detector-model-definition $detector_model_definition --role-arn $role_arn "$@"
}
