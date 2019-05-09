p6_aws_ecs_attributes_put() {
    local attributes="$1"
    shift 1

    p6_log_or_run aws ecs put-attributes --attributes $attributes "$@"
}
