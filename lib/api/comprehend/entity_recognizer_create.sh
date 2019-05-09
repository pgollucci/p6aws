p6_aws_comprehend_entity_recognizer_create() {
    local recognizer_name="$1"
    local data_access_role_arn="$2"
    local input_data_config="$3"
    local language_code="$4"
    shift 4

    p6_run_write_cmd aws comprehend create-entity-recognizer --recognizer-name $recognizer_name --data-access-role-arn $data_access_role_arn --input-data-config $input_data_config --language-code $language_code "$@"
}
