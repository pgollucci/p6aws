p6_aws_clouddirectory_typed_link_facet_create() {
    local schema_arn="$1"
    local facet="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory create-typed-link-facet --schema-arn $schema_arn --facet $facet "$@"
}
