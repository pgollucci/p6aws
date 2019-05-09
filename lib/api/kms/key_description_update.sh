p6_aws_kms_key_description_update() {
    local key_id="$1"
    local description="$2"
    shift 2

    p6_log_or_run aws kms update-key-description --key-id $key_id --description $description "$@"
}
