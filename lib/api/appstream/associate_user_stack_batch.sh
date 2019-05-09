p6_aws_appstream_associate_user_stack_batch() {
    local user_stack_associations="$1"
    shift 1

    p6_run_write_cmd aws appstream batch-associate-user-stack --user-stack-associations $user_stack_associations "$@"
}
