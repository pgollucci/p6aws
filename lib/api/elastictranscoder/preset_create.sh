p6_aws_elastictranscoder_preset_create() {
    local name="$1"
    local container="$2"
    shift 2

    p6_log_or_run aws elastictranscoder create-preset --name $name --container $container "$@"
}
