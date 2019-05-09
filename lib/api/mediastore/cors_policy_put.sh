p6_aws_mediastore_cors_policy_put() {
    local container_name="$1"
    local cors_policy="$2"
    shift 2

    p6_run_write_cmd aws mediastore put-cors-policy --container-name $container_name --cors-policy $cors_policy "$@"
}
