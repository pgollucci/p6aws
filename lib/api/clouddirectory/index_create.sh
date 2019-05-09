p6_aws_clouddirectory_index_create() {
    local directory_arn="$1"
    local ordered_indexed_attribute_list="$2"
    local is_unique="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory create-index --directory-arn $directory_arn --ordered-indexed-attribute-list $ordered_indexed_attribute_list --is-unique $is_unique "$@"
}
