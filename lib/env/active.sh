######################################################################
#<
#
# Function: str old = p6_aws_env_ca_bundle_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_ca_bundle_active() {
    local val="${1:-}"

    local old="${AWS_CA_BUNDLE}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_CA_BUNDLE" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_metadata_service_timeout_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_metadata_service_timeout_active() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_TIMEOUT}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_METADATA_SERVICE_TIMEOUT" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_metadata_service_num_attempts_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_metadata_service_num_attempts_active() {
    local val="${1:-}"

    local old="${AWS_METADATA_SERVICE_NUM_ATTEMPTS}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_METADATA_SERVICE_NUM_ATTEMPTS" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_output_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_output_active() {
    local val="${1:-}"

    local old="${AWS_OUTPUT}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_OUTPUT" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_org_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_org_active() {
    local val="${1:-}"

    local old="${AWS_ORG}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ORG" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_profile_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_default_profile_active() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_PROFILE}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_DEFAULT_PROFILE" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_default_region_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_default_region_active() {
    local val="${1:-}"

    local old="${AWS_DEFAULT_REGION}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_DEFAULT_REGION" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_vpc_id_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_vpc_id_active() {
    local val="${1:-}"

    local old="${AWS_VPC_ID}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_VPC_ID" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_env_tag_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_env_tag_active() {
    local val="${1:-}"

    local old="${AWS_ENV_TAG}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ENV_TAG" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_env_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_env_active() {
    local val="${1:-}"

    local old="${AWS_ENV}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ENV" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_profile_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_profile_active() {
    local val="${1:-}"

    local old="${AWS_PROFILE}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_PROFILE" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_config_file_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_config_file_active() {
    local val="${1:-}"

    local old="${AWS_CONFIG_FILE}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_CONFIG_FILE" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_shared_credentials_file_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_shared_credentials_file_active() {
    local val="${1:-}"

    local old="${AWS_SHARED_CREDENTIALS_FILE}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_SHARED_CREDENTIALS_FILE" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_session_token_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_session_token_active() {
    local val="${1:-}"

    local old="${AWS_SESSION_TOKEN}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_SESSION_TOKEN" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_access_key_id_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_access_key_id_active() {
    local val="${1:-}"

    local old="${AWS_ACCESS_KEY_ID}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_ACCESS_KEY_ID" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_secret_access_key_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_secret_access_key_active() {
    local val="${1:-}"

    local old="${AWS_SECRET_ACCESS_KEY}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_SECRET_ACCESS_KEY" "$val"
    fi

    p6_return_str "$old"
}
######################################################################
#<
#
# Function: str old = p6_aws_env_region_active([val=])
#
#  Args:
#	OPTIONAL val - []
#
#  Returns:
#	str - old
#
#>
######################################################################
p6_aws_env_region_active() {
    local val="${1:-}"

    local old="${AWS_REGION}"

    if ! p6_string_blank "$val"; then
       p6_env_export "AWS_REGION" "$val"
    fi

    p6_return_str "$old"
}