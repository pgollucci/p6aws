p6_aws_pinpoint_attributes_remove() {
    local application_id="$1"
    local attribute_type="$2"
    local update_attributes_request="$3"
    shift 3

    p6_log_or_run aws pinpoint remove-attributes --application-id $application_id --attribute-type $attribute_type --update-attributes-request $update_attributes_request "$@"
}
