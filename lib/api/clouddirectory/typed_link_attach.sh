p6_aws_clouddirectory_typed_link_attach() {
    local directory_arn="$1"
    local source_object_reference="$2"
    local target_object_reference="$3"
    local typed_link_facet="$4"
    local attributes="$5"
    shift 5

    p6_run_write_cmd aws clouddirectory attach-typed-link --directory-arn $directory_arn --source-object-reference $source_object_reference --target-object-reference $target_object_reference --typed-link-facet $typed_link_facet --attributes $attributes "$@"
}
