p6_aws_clouddirectory_link_attributes_get() {
    local directory_arn="$1"
    local typed_link_specifier="$2"
    local attribute_names="$3"
    shift 3

    p6_run_read_cmd aws clouddirectory get-link-attributes --directory-arn $directory_arn --typed-link-specifier $typed_link_specifier --attribute-names $attribute_names "$@"
}
