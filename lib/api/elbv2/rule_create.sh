p6_aws_elbv2_rule_create() {
    local listener_arn="$1"
    local conditions="$2"
    local priority="$3"
    local actions="$4"
    shift 4

    p6_run_write_cmd aws elbv2 create-rule --listener-arn $listener_arn --conditions $conditions --priority $priority --actions $actions "$@"
}
