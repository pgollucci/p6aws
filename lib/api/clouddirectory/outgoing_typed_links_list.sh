p6_aws_clouddirectory_outgoing_typed_links_list() {
    local directory_arn="$1"
    local object_reference="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory list-outgoing-typed-links --directory-arn $directory_arn --object-reference $object_reference "$@"
}
