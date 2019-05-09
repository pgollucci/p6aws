p6_aws_clouddirectory_typed_link_facet_delete() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory delete-typed-link-facet --schema-arn $schema_arn --name $name "$@"
}
