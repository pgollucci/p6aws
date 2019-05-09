p6_aws_cloudformation_change_set_create() {
    local stack_name="$1"
    local change_set_name="$2"
    shift 2

    p6_run_write_cmd aws cloudformation create-change-set --stack-name $stack_name --change-set-name $change_set_name "$@"
}
