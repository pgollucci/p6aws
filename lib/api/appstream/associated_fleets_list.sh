p6_aws_appstream_associated_fleets_list() {
    local stack_name="$1"
    shift 1

    p6_run_read_cmd aws appstream list-associated-fleets --stack-name $stack_name "$@"
}
