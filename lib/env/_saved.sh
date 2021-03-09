######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_ca_bundle_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_ca_bundle_saved() {
    local val="${1:-}"

    local old="${AWS_CA_BUNDLE_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_CA_BUNDLE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_timeout_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_timeout_saved() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_TIMEOUT_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_METADATA_SERVICE_TIMEOUT_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_metadata_service_num_attempts_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_metadata_service_num_attempts_saved() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_output_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_output_saved() {
    local val="${1:-}"

    local old="${AWS_OUTPUT_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_OUTPUT_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_org_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_org_saved() {
    local val="${1:-}"

    local old="${AWS_ORG_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ORG_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_profile_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_profile_saved() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_PROFILE_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_DEFAULT_PROFILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_default_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_default_region_saved() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_REGION_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_DEFAULT_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_vpc_id_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_vpc_id_saved() {
    local val="${1:-}"

    local old="${AWS_VPC_ID_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_VPC_ID_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_tag_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_tag_saved() {
    local val="${1:-}"

    local old="${AWS_ENV_TAG_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ENV_TAG_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_env_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_env_saved() {
    local val="${1:-}"

    local old="${AWS_ENV_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ENV_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_profile_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_profile_saved() {
    local val="${1:-}"

    local old="${AWS_PROFILE_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_PROFILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_config_file_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_config_file_saved() {
    local val="${1:-}"

    local old="${AWS_CONFIG_FILE_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_CONFIG_FILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_shared_credentials_file_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_shared_credentials_file_saved() {
    local val="${1:-}"

    local old="${AWS_SHARED_CREDENTIALS_FILE_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_SHARED_CREDENTIALS_FILE_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_session_token_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_session_token_saved() {
    local val="${1:-}"

    local old="${AWS_SESSION_TOKEN_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_SESSION_TOKEN_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_access_key_id_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_access_key_id_saved() {
    local val="${1:-}"

    local old="${AWS_ACCESS_KEY_ID_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ACCESS_KEY_ID_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_secret_access_key_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_secret_access_key_saved() {
    local val="${1:-}"

    local old="${AWS_SECRET_ACCESS_KEY_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_SECRET_ACCESS_KEY_saved" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_cfg_env_region_saved([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_cfg_env_region_saved() {
    local val="${1:-}"

    local old="${AWS_REGION_saved}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_REGION_saved" "$val"
    fi

    p6_return_str "$old"
}