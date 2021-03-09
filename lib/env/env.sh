######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_config_file_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_config_file_active() {
    local val="$1"

    local old="${AWS_CONFIG_FILE:-$HOME/.aws/config}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CONFIG_FILE" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_config_file_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_config_file_source() {
    local val="$1"

    local old="${AWS_CONFIG_FILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CONFIG_FILE_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_config_file_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_config_file_saved() {
    local val="$1"

    local old="${AWS_CONFIG_FILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CONFIG_FILE_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_shared_credentials_file_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_shared_credentials_file_active() {
    local val="$1"

    local old="${AWS_SHARED_CREDENTIALS_FILE:-$HOME/.aws/credentials}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SHARED_CREDENTIALS_FILE" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_shared_credentials_file_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_shared_credentials_file_source() {
    local val="$1"

    local old="${AWS_SHARED_CREDENTIALS_FILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SHARED_CREDENTIALS_FILE_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_shared_credentials_file_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_shared_credentials_file_saved() {
    local val="$1"

    local old="${AWS_SHARED_CREDENTIALS_FILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SHARED_CREDENTIALS_FILE_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_ca_bundle_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_ca_bundle_active() {
    local val="$1"

    local old="${AWS_CA_BUNDLE}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CA_BUNDLE" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_ca_bundle_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_ca_bundle_source() {
    local val="$1"

    local old="${AWS_CA_BUNDLE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CA_BUNDLE_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_ca_bundle_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_ca_bundle_saved() {
    local val="$1"

    local old="${AWS_CA_BUNDLE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_CA_BUNDLE_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_timeout_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_timeout_active() {
    local val="$1"

    local old="${AWS_METADATA_SERVICE_TIMEOUT}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_TIMEOUT" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_timeout_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_timeout_source() {
    local val="$1"

    local old="${AWS_METADATA_SERVICE_TIMEOUT_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_TIMEOUT_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_timeout_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_timeout_saved() {
    local val="$1"

    local old="${AWS_METADATA_SERVICE_TIMEOUT_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_TIMEOUT_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_num_attempts_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_num_attempts_active() {
    local val="$1"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_num_attempts_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_num_attempts_source() {
    local val="$1"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_num_attempts_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_num_attempts_saved() {
    local val="$1"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_output_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_output_active() {
    local val="$1"

    local old="${AWS_OUTPUT}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_OUTPUT" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_output_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_output_source() {
    local val="$1"

    local old="${AWS_OUTPUT_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_OUTPUT_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_output_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_output_saved() {
    local val="$1"

    local old="${AWS_OUTPUT_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_OUTPUT_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_session_token_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_session_token_active() {
    local val="$1"

    local old="${AWS_SESSION_TOKEN}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SESSION_TOKEN" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_session_token_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_session_token_source() {
    local val="$1"

    local old="${AWS_SESSION_TOKEN_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SESSION_TOKEN_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_session_token_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_session_token_saved() {
    local val="$1"

    local old="${AWS_SESSION_TOKEN_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SESSION_TOKEN_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_access_key_id_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_access_key_id_active() {
    local val="$1"

    local old="${AWS_ACCESS_KEY_ID}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ACCESS_KEY_ID" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_access_key_id_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_access_key_id_source() {
    local val="$1"

    local old="${AWS_ACCESS_KEY_ID_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ACCESS_KEY_ID_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_access_key_id_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_access_key_id_saved() {
    local val="$1"

    local old="${AWS_ACCESS_KEY_ID_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ACCESS_KEY_ID_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_secret_access_key_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_secret_access_key_active() {
    local val="$1"

    local old="${AWS_SECRET_ACCESS_KEY}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SECRET_ACCESS_KEY" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_secret_access_key_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_secret_access_key_source() {
    local val="$1"

    local old="${AWS_SECRET_ACCESS_KEY_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SECRET_ACCESS_KEY_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_secret_access_key_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_secret_access_key_saved() {
    local val="$1"

    local old="${AWS_SECRET_ACCESS_KEY_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_SECRET_ACCESS_KEY_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_org_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_org_active() {
    local val="$1"

    local old="${AWS_ORG}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ORG" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_org_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_org_source() {
    local val="$1"

    local old="${AWS_ORG_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ORG_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_org_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_org_saved() {
    local val="$1"

    local old="${AWS_ORG_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ORG_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_vpc_id_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_vpc_id_active() {
    local val="$1"

    local old="${AWS_VPC_ID}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_VPC_ID" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_vpc_id_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_vpc_id_source() {
    local val="$1"

    local old="${AWS_VPC_ID_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_VPC_ID_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_vpc_id_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_vpc_id_saved() {
    local val="$1"

    local old="${AWS_VPC_ID_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_VPC_ID_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_profile_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_profile_active() {
    local val="$1"

    local old="${AWS_DEFAULT_PROFILE}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_PROFILE" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_profile_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_profile_source() {
    local val="$1"

    local old="${AWS_DEFAULT_PROFILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_PROFILE_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_profile_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_profile_saved() {
    local val="$1"

    local old="${AWS_DEFAULT_PROFILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_PROFILE_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_region_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_region_active() {
    local val="$1"

    local old="${AWS_DEFAULT_REGION}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_REGION" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_region_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_region_source() {
    local val="$1"

    local old="${AWS_DEFAULT_REGION_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_REGION_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_region_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_region_saved() {
    local val="$1"

    local old="${AWS_DEFAULT_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_DEFAULT_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_tag_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_tag_active() {
    local val="$1"

    local old="${AWS_ENV_TAG}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_TAG" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_tag_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_tag_source() {
    local val="$1"

    local old="${AWS_ENV_TAG_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_TAG_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_tag_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_tag_saved() {
    local val="$1"

    local old="${AWS_ENV_TAG_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_TAG_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_active() {
    local val="$1"

    local old="${AWS_ENV}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_source() {
    local val="$1"

    local old="${AWS_ENV_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_saved() {
    local val="$1"

    local old="${AWS_ENV_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_ENV_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_profile_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_profile_active() {
    local val="$1"

    local old="${AWS_PROFILE}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_PROFILE" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_profile_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_profile_source() {
    local val="$1"

    local old="${AWS_PROFILE_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_PROFILE_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_profile_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_profile_saved() {
    local val="$1"

    local old="${AWS_PROFILE_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_PROFILE_saved" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_region_active(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_region_active() {
    local val="$1"

    local old="${AWS_REGION}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_REGION" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_region_source(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_region_source() {
    local val="$1"

    local old="${AWS_REGION_source}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_REGION_source" "$val"
    fi

    p6_return_str "$old"
}

######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_region_saved(val)
#
#  Args:
#	val -
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_region_saved() {
    local val="$1"

    local old="${AWS_REGION_saved}"

    if ! p6_string_blank "$val"; then
        p6_env_export "AWS_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}