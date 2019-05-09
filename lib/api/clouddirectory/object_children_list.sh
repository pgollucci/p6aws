p6_aws_clouddirectory_object_children_list() {
    local directory_arn="$1"
    local object_reference="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory list-object-children --directory-arn $directory_arn --object-reference $object_reference "$@"
}
